import 'package:flutter/widgets.dart';
import 'package:validity/validators/validator.dart';

class ValidateUrl implements IValidator<String> {
  final String? errorMessage;

  ValidateUrl(this.errorMessage);

  @override
  bool isValid(BuildContext context, String url) {
    Uri? uri;
    try {
      uri = Uri.parse(url);
    } catch (e) {
      return false;
    }
    return uri.scheme == 'http' || uri.scheme == 'https';
  }

  @override
  String? message(BuildContext context) => errorMessage;
}
