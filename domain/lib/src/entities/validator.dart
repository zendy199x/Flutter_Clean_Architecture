class Validator {
  // Positive integer
  static bool validateNumber(String text) {
    Pattern pattern = r'^(\(?\+?[0-9]*\)?)?[0-9(\)]*$';
    RegExp regex = new RegExp(pattern.toString());
    return regex.hasMatch(text);
  }

  // Only unsigned letters and positive integers
  static bool validateNumberAndText(String text) {
    Pattern pattern = r"^[0-9a-z]";
    RegExp regex = new RegExp(pattern.toString());
    return regex.hasMatch(text);
  }
}
