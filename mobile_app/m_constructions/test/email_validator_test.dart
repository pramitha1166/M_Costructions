// Import the test package and Counter class
import 'package:m_constructions/utils/validate_email.dart';
import 'package:test/test.dart';

void main() {
  test('Valid email must be contain @ symbol and domain name', () {
    final emailValidator = ValidateEmail();

    var result = emailValidator.validateEmail("Shihara@gmail.com");

    expect(result, true);
  });

  test('Valid email cannot be exist without domin and @ symbol', () {
    final emailValidator = ValidateEmail();

    var result = emailValidator.validateEmail("Shihara");

    expect(result, false);
  });
}
