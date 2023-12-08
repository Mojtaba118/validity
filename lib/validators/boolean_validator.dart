import 'package:flutter/widgets.dart';
import 'package:validity/validators/validator.dart';

class ValidateBoolean implements IValidator<String> {
  final String? errorMessage;

  ValidateBoolean(this.errorMessage);

  @override
  bool isValid(BuildContext context, String value) {
    String lowerCased = value.toLowerCase();
    return lowerCased == "true" || lowerCased == "false";
  }

  @override
  String? message(BuildContext context) => errorMessage;
}
