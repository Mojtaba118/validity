import 'package:flutter/widgets.dart';
import 'package:validity/validators/validator.dart';

class LessThan implements IValidator<num> {
  final num less;
  final String? errorMessage;

  LessThan({required this.less, this.errorMessage});

  @override
  bool isValid(BuildContext context, num? value) {
    return value != null && value < less;
  }

  @override
  String? message(BuildContext context) {
    return errorMessage;
  }
}
