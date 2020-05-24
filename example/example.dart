import 'package:jikan/jikan.dart';

void main() async {
  var jikan = Jikan();
  final fma = 5114;

  // Season endpoint
  var seasons = await jikan.seasons.getSeason(2019, 'spring');
  print('${seasons.name} ${seasons.year} animes:');
  seasons.anime
    ..removeWhere((anime) => anime.score == null)
    ..removeWhere((anime) => anime.kids == true)
    ..removeWhere((anime) => anime.continuing == true)
    ..removeWhere((anime) => anime.type != 'TV' && anime.type != 'Movie')
    ..sort((b, a) => a.score.compareTo(b.score))
    ..forEach((anime) {
      print('${anime.title} - ${anime.score} - ${anime.type} - ${anime.malId}');
    });

  // Anime endpoint
  // Get an anime
  var anime = await jikan.animes.getAnime(fma);
  print('${anime.title}');
  print('-' * anime.title.length);
  print('Score: ${anime.score}');
  print('Season Premiered: ${anime.premiered}');
  print('\nStudios:');
  print('-------');
  anime.studios.forEach((anime) {
    print('${anime.name}');
  });

  // Get characters and staff
  var charactersStaff = await jikan.animes.getAnimeCharacterStaff(fma);
  print('\nCharacters:');
  print('-----------');
  charactersStaff.characters.where((character) => character.role == 'Main')
    ..forEach((character) {
      print('${character.name} - ' +
          character.voiceActors.singleWhere((va) => va.language == 'Japanese').name);
    });

  // Get anime episodes
  var episodes = await jikan.animes.getAnimeEpisodes(fma, page: 1);
  print('\nEpisodes');
  print('--------');
  episodes.episodes.forEach((episode) {
    print('${episode.id}: ${episode.title}');
  });

  // Get anime news
  var news = await jikan.animes.getAnimeNews(fma);
  print('\nLatest News');
  print('-----------');
  print('${news.articles[0].title} -  ${news.articles[0].url}');

  // Get anime pictures
  var pictures = await jikan.animes.getAnimePictures(fma);
  print('\nPicture');
  print('-------');
  print('${pictures.pictures[0].small}');

  // Get anime videos
  var videos = await jikan.animes.getAnimeVideos(fma);
  print('\nLast episode video');
  print('------------------');
  print(
      '${videos.videoEpisodes[0].episode} - ${videos.videoEpisodes[0].title} - ${videos.videoEpisodes[0].url}');

  var stats = await jikan.animes.getAnimeStats(fma);
  print('\nScore');
  print('-----');
  stats.scores.forEach((k, v) {
    print('$k: ${v.percentage}%');
  });

  // Get anime topics
  var topics = await jikan.animes.getAnimeForumTopics(fma);
  print('\nLatest topic');
  print('-------');
  print('${topics.topics[0].title} - ${topics.topics[0].url}');

  // Get anime reviews
  var reviews = await jikan.animes.getAnimeReviews(fma);
  print('\nLatest review');
  print('-------------');
  print(
      'Reviewer:${reviews.reviews[0].reviewer.username} - Score:${reviews.reviews[0].reviewer.scores.overall} -  Helpful:${reviews.reviews[0].helpfulCount} - ${reviews.reviews[0].url}');

  // Get anime recommendations
  var recommendations = await jikan.animes.getAnimeRecommendations(fma);
  print('\nA recommendation');
  print('----------------');
  print(
      '${recommendations.recommendations[0].title} - ${recommendations.recommendations[0].url}');

  // Get anime user updates
  var updates = await jikan.animes.getAnimeUserUpdates(fma);
  print('\nLatest user update');
  print('------------------');
  print(
      'User:${updates.users[0].username} - Score:${updates.users[0].score} - Status:${updates.users[0].status}');
}
