import 'package:flutter/widgets.dart';

abstract interface class IValidator<T> {
  bool isValid(BuildContext context, T value);

  String? message(BuildContext context);
}

class Validator<T> {
  final BuildContext context;
  final T? value;

  Validator({required this.context, required this.value});

  String? schema(List<IValidator> validators) {
    const String defaultErrorMessage = "Something wrong occurred";
    for (final validator in validators) {
      final isValid = validator.isValid(context, value);
      if (!isValid) {
        final message = validator.message(context) ?? defaultErrorMessage;
        return message;
      }
    }
    return null;
  }
}
