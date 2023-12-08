import 'package:flutter/widgets.dart';
import 'package:validity/validators/validator.dart';

class ValidateRequired implements IValidator<String> {
  final String? errorMessage;

  ValidateRequired(this.errorMessage);

  @override
  bool isValid(BuildContext context, String value) => value.isNotEmpty;

  @override
  String? message(BuildContext context) => errorMessage;
}
