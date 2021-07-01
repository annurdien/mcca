import 'package:lexiedu/app/app.locator.dart';
import 'package:lexiedu/services/authentication_service.dart';
import 'package:stacked/stacked.dart';

class HomePageViewModel extends BaseViewModel {
  final _authService = locator<AuthenticationService>();

  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  String? get username => capitalize(_authService.user!.name);
}
