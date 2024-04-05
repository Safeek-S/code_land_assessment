import '../helpers/constants/app_constants.dart';

class Validator {
  String? emptyFieldValidator(String? value) {
    if (value == null || value.isEmpty) {
      return AppConstants.emptyPasswordWarning;
    } else {
      return null;
    }
  }
}
