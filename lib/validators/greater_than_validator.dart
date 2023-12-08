import 'package:flutter/widgets.dart';
import 'package:validity/validators/validator.dart';

class GreaterThan implements IValidator<num> {
  final num greater;
  final String? errorMessage;

  GreaterThan({required this.greater, this.errorMessage});

  //! Warning: why you use num type
  @override
  bool isValid(BuildContext context, num? value) {
    return value != null && value > greater;
  }

  @override
  String? message(BuildContext context) {
    return errorMessage;
  }
}
