import 'package:jikan/jikan.dart';
import 'package:test/test.dart';

void main() {
  Jikan jikan;

  setUpAll(() {
    jikan = Jikan();
  });

  group('Persons test:', () {
    test(
      'should return Minase Inori',
      () async {
        // arrange

        // act
        final person = await jikan.persons.getPerson(34785);

        // assert
        expect(person.name, 'Rie Takahashi');
        expect(person.givenName, '李依');
        expect(person.familyName, '高橋');
        // assert
      },
    );
  });
}
