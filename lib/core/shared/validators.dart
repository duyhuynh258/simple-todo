class Validators {
  static String? validateEmail(
    String value,
    String? emailRequiredMessage,
    String? validEmailMessage,
  ) {
    if (value.isEmpty) {
      return emailRequiredMessage;
    } else if (!RegExp(
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)"
      r'*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+'
      '[a-z0-9](?:[a-z0-9-]*[a-z0-9])?',
    ).hasMatch(value)) {
      return validEmailMessage;
    } else {
      return null;
    }
  }
}
