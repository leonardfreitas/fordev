import 'package:test/test.dart';

import 'package:fordev/validation/validators/validators.dart';

void main() {
  EmailValidation sut;

  setUp(() {
    sut = EmailValidation('any_value');
  });

  test('Should return null if email is empty', () {
    expect(sut.validate(''), null);
  });

  test('Should return null if email is empty', () {
    expect(sut.validate(null), null);
  });

  test('Should return null if email is valid', () {
    expect(sut.validate('leonardofreitasdev@gmail.com'), null);
  });

  test('Should return error if email is invalid', () {
    expect(sut.validate('leonardofreitasdev'), 'Campo inválido');
  });
}
