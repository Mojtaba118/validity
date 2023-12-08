import 'package:flutter/widgets.dart';
import 'package:validity/validators/validator.dart';

class ValidateStartWith implements IValidator<String> {
  final String? errorMessage;
  final String prefix;

  ValidateStartWith(this.errorMessage, {required this.prefix});

  @override
  bool isValid(BuildContext context, String value) => value.startsWith(prefix);

  @override
  String? message(BuildContext context) => errorMessage;
}
