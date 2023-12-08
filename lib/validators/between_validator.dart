import 'package:flutter/widgets.dart';
import 'package:validity/validators/validator.dart';

class Between implements IValidator<num> {
  final num start;
  final num end;
  final String? errorMessage;

  Between({required this.start, required this.end, this.errorMessage});

  @override
  bool isValid(BuildContext context, num? value) {
    return value != null && value > start && value < end;
  }

  @override
  String? message(BuildContext context) {
    return errorMessage;
  }
}
