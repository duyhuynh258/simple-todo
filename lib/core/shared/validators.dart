class Validators {
  static String? validateEmail(
      String value, String? emailRequiredMessage, String? validEmailMessage) {
    if (value.isEmpty) {
      return emailRequiredMessage;
    } else if (!RegExp(
            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)"
            r'*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+'
            '[a-z0-9](?:[a-z0-9-]*[a-z0-9])?')
        .hasMatch(value)) {
      return validEmailMessage;
    } else {
      return null;
    }
  }

  static bool isValidEmail(String value) {
    if (value.isEmpty) {
      return false;
    }
    final pattern =
        RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)"
            r'*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+'
            '[a-z0-9](?:[a-z0-9-]*[a-z0-9])?');
    return pattern.hasMatch(value);
  }

  static bool isValidName(String value) {
    if (value.isEmpty) {
      return false;
    }
    final pattern = RegExp(r'^[a-zA-Z ]+$');
    return pattern.hasMatch(value);
  }
}
