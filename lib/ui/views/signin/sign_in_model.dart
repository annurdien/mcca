import 'package:lexiedu_app/app/app.locator.dart';
import 'package:lexiedu_app/app/app.router.dart';
import 'package:lexiedu_app/models/application_model.dart';
import 'package:lexiedu_app/services/authentication_service.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'sign_in_view.form.dart';

class SignInViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();
  final _snackBarService = locator<SnackbarService>();
  final _logger = Logger();

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }

  Future<void> signIn() async {
    try {
      setBusy(true);
      _logger.i(formValueMap);
      final payload = AuthDto(
        email: emailValue ?? '',
        password: passwordValue ?? '',
      );

      final user = await _authService.signIn(
        payload: payload,
      );

      if (user == null) {
        setError('Email atau password salah, silahkan coba kembali');
        _snackBarService.showCustomSnackBar(
          title: 'Error',
          message: modelError,
        );

        return;
      }

      _snackBarService.showSnackbar(
        title: 'Info',
        message: 'Anda berhasil masuk',
      );

      await _navigationService.replaceWith(Routes.homeView);
    } catch (error) {
      _logger.e(error);
      _snackBarService.showCustomSnackBar(
        title: 'error',
        message: error.toString(),
      );
    } finally {
      setBusy(false);
    }
  }

  void toSignUpScreen() {
    _navigationService.replaceWith(Routes.signUpView);
  }
}
