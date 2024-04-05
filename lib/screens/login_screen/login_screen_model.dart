

import 'package:codeland/helpers/app_navigations/navigation_helper.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'login_screen_model.g.dart';

class LoginScreenModel extends _LoginScreenModel
    with _$LoginScreenModel, NavigationMixin{}

abstract class _LoginScreenModel with Store {

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @observable
  Map<String, String> fieldErrorMessages = {};

  @action
  void setFieldErrorMessages(String field, String errorMessage) {
    fieldErrorMessages[field] = errorMessage;
  }

  @action
  void clearErrorMessage(String field) {
    fieldErrorMessages.remove(field);
  }
}
