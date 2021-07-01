import 'package:flutter/material.dart';
import 'package:lexiedu/app/app.locator.dart';
import 'package:lexiedu/app/app.router.dart';
import 'package:lexiedu/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SettingViewModel extends BaseViewModel {
  final _authService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();

  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  String? get username => capitalize(_authService.user!.name);
  String? get email => _authService.user!.email;

  void signOut() {
    _authService.signOut();
    _navigationService.clearStackAndShow(Routes.signInView);
  }
}
