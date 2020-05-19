import 'package:jikan/jikan.dart';
import 'package:test/test.dart';

void main() {
  Jikan jikan;

  setUpAll(() {
    jikan = Jikan();
  });

  group('Seasons test:', () {
    test(
      'should return \'Winter 1984\' season',
      () async {
        //arrange
        final tYear = 1984;
        final tName = 'Winter';

        // act
        final season = await jikan.seasons.getSeason(1984, 'winter');

        // assert
        expect(season.year, tYear);
        expect(season.name, tName);
      },
    );

    test(
      'should include \'Sword Art Online: Alicization - War of Underworld\' when \'Fall 2019\' is requsted',
      () async {
        // arrange
        final tSao = 'Sword Art Online: Alicization - War of Underworld';

        // act
        final season = await jikan.seasons.getSeason(2019, 'fall');

        // assert
        expect(season.anime.firstWhere((a) => a.title == tSao).title, tSao);
      },
    );

    test(
      'should throw JikanException when request contains an invalid year',
      () async {
        // arrange

        // act
        final call = jikan.seasons.getSeason;

        // assert
        expect(() => call(20199, 'fall'), throwsA(TypeMatcher<JikanException>()));
      },
    );

    test(
      'should throw JikanException when request contains an invalid season',
      () async {
        // arrange

        // act
        final call = jikan.seasons.getSeason;

        // assert
        expect(() => call(2019, 'dry'), throwsA(TypeMatcher<JikanException>()));
      },
    );
  });
}
