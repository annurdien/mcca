import 'package:lexiedu_app/services/authentication_service.dart';
import 'package:lexiedu_app/services/local_storage_service.dart';
import 'package:lexiedu_app/ui/views/home/home_view.dart';
import 'package:lexiedu_app/ui/views/signin/sign_in_view.dart';
import 'package:lexiedu_app/ui/views/signup/sign_up_view.dart';
import 'package:lexiedu_app/ui/views/startup/start_up_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  logger: StackedLogger(),
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: SignInView),
    MaterialRoute(page: SignUpView),
  ],
  dependencies: [
    LazySingleton(classType: LocalStorageService),
    LazySingleton(classType: AuthenticationService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: SnackbarService)
  ],
)
class AppSetup {}
