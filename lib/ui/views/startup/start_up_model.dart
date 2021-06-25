import 'package:lexiedu_app/app/app.locator.dart';
import 'package:lexiedu_app/services/authentication_service.dart';
import 'package:lexiedu_app/ui/views/home/home_view.dart';
import 'package:lexiedu_app/ui/views/signin/sign_in_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _authService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();

  Future<void> runStartUpLogic() async {
    await Future.delayed(Duration(seconds: 1));

    await _authService.initialize();

    if (_authService.hasUser) {
      return await _navigationService.replaceWithTransition(
        HomeView(),
        transition: 'upToDown',
      );
    }

    return await _navigationService.replaceWithTransition(
      SignInView(),
      transition: 'upToDown',
    );
  }
}
