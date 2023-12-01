import 'package:flutter/widgets.dart';

abstract interface class IValidator<T> {
  bool isValid(BuildContext context, T? value);

  String message(BuildContext context);
}

class Validator<T> {
  final BuildContext context;
  final T? value;

  Validator({required this.context, required this.value});

  String? schema(List<IValidator> validators) {
    for (var validator in validators) {
      if (!validator.isValid(context, value)) {
        return validator.message(context);
      }
    }
    return null;
  }
}
