import '../../helpers/app_navigations/app_routes.dart';
import '../../helpers/app_navigations/navigation_helper.dart';
import '../../utils/utils.dart';
import 'login_screen_model.dart';

class LoginScreenVM extends LoginScreenModel {
  String? validateField(String? value, String fieldType) {
    try {
      var result = Validator().emptyFieldValidator(value);
      if (result != null) {
        setFieldErrorMessages(fieldType, result);
        return fieldErrorMessages[fieldType];
      } else {
        clearErrorMessage(fieldType);
        return result;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }


    void handleLogin() async {
    if (formKey.currentState!.validate()) {
      navigateToImageUploadScreen();
    }

  }

  void navigateToImageUploadScreen() {
    try {
      navigationSink.add(Navigation(
          navigationType: NavigationType.push,
          appRoute: AppRoute.imageUploadScreen.routeName));
    } catch (e) {
      print(e.toString());
    }
  }
}
