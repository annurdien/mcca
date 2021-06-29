import 'package:lexiedu_app/app/app.locator.dart';
import 'package:lexiedu_app/app/app.router.dart';
import 'package:lexiedu_app/models/application_model.dart';
import 'package:lexiedu_app/services/authentication_service.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'sign_up_view.form.dart';

class SignUpViewModel extends FormViewModel {
  final _logger = Logger();
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();
  final _snackbarService = locator<SnackbarService>();

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }

  Future<void> signUp() async {
    try {
      setBusy(true);
      _logger.i(formValueMap);

      final user = await _authService.signUp(
        payload: AuthDto(
          email: emailValue ?? '',
          password: passwordValue ?? '',
          name: nameValue ?? '',
        ),
      );
      
      if (user == null) {
        setError('Semua form harus diisi');
        _snackbarService.showSnackbar(
          title: 'Error',
          message: modelError,
        );

        return;
      }

      await _navigationService.replaceWith(Routes.homeView);
      _snackbarService.showSnackbar(message: 'Akun berhasil dibuat');
    } catch (e) {
      _logger.e(e);
      _snackbarService.showSnackbar(
        title: 'Error',
        message: e.toString(),
      );
    } finally {
      setBusy(false);
    }
  }

  void checkPassword() {
    if (passwordValue != confirmationValue) {
      setError('Password tidak sama');
      _snackbarService.showSnackbar(
        title: 'Error',
        message: modelError,
      );
      return;
    }
  }

  void toSignInView() {
    _navigationService.replaceWith(Routes.signInView);
  }
}
