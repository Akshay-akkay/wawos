class JoinPageValidation with Validation {
  bool checkPhoneNumber({String? value}) {
    return verifyPhoneNumberFormat(value: value);
  }

  bool checkIfFieldIsEmpty({String? value}) {
    return isFieldEmpty(value: value);
  }
}

mixin Validation {
  bool isFieldEmpty({String? value}) => value?.isEmpty ?? true;

  bool verifyPhoneNumberFormat({String? value}) {
    if (value == null) return false;
    return RegExp(
      r'^(?:[+0]9)?[0-9]{10}$',
    ).hasMatch(value);
  }
}
