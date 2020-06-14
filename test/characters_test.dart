import 'package:jikan/jikan.dart';
import 'package:test/test.dart';

void main() {
  Jikan jikan;

  setUpAll(() {
    jikan = Jikan();
  });

  group('Characters test:', () {
    test(
      'should return Megumin with the correct details',
      () async {
        // arrange

        // act
        final character = await jikan.characters.getCharacter(117225);

        // assert
        expect(character.name, 'Megumin');
        expect(character.nameKanji, 'めぐみん');
        expect(character.animeography[0].malId, 30831);
        expect(character.animeography[0].role, 'Main');
        expect(character.mangaography[0].malId, 60553);
        expect(character.voiceActors[1].malId, 34785);
        expect(character.voiceActors[1].language, 'Japanese');

        // assert
      },
    );
  });
}
