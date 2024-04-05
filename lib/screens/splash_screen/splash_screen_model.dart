import 'package:mobx/mobx.dart';

import '../../helpers/app_navigations/navigation_helper.dart';

part 'splash_screen_model.g.dart';

class SplashScreenModel extends _SplashScreenModel
    with _$SplashScreenModel, NavigationMixin{}

abstract class _SplashScreenModel with Store {}