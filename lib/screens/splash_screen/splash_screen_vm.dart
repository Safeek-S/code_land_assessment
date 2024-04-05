import 'package:codeland/screens/splash_screen/splash_screen_model.dart';

import '../../helpers/app_navigations/app_routes.dart';
import '../../helpers/app_navigations/navigation_helper.dart';

class SplashScreenVM extends SplashScreenModel {
  void navigateToLoginScreen() {
    try {
      Future.delayed(const Duration(seconds: 2), () {
        navigationSink.add(Navigation(
            navigationType: NavigationType.push,
            appRoute: AppRoute.loginScreen.routeName));
      });
    } catch (e) {
      print(e.toString());
    }
  }
}
