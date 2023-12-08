import 'package:flutter/widgets.dart';
import 'package:validity/validators/validator.dart';

class ValidateEndWith implements IValidator<String> {
  final String? errorMessage;
  final String endingSubstring;

  ValidateEndWith(this.errorMessage, {required this.endingSubstring});

  @override
  bool isValid(BuildContext context, String value) =>
      value.endsWith(endingSubstring);

  @override
  String? message(BuildContext context) => errorMessage;
}
