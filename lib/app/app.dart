import 'package:lexiedu/services/authentication_service.dart';
import 'package:lexiedu/services/machine_learning_service.dart';
import 'package:lexiedu/services/local_storage_service.dart';
import 'package:lexiedu/ui/views/chat/chat_view.dart';
import 'package:lexiedu/ui/views/game/game_view.dart';
import 'package:lexiedu/ui/views/home/home_view.dart';
import 'package:lexiedu/ui/views/homepage/homepage_view.dart';
import 'package:lexiedu/ui/views/reading/reading_view.dart';
import 'package:lexiedu/ui/views/settings/settings_view.dart';
import 'package:lexiedu/ui/views/signin/sign_in_view.dart';
import 'package:lexiedu/ui/views/signup/sign_up_view.dart';
import 'package:lexiedu/ui/views/startup/start_up_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  logger: StackedLogger(),
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: SignInView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: HomePageView),
    MaterialRoute(page: ReadingView),
    MaterialRoute(page: GameView),
    MaterialRoute(page: ChatView),
    MaterialRoute(page: SettingView)
  ],
  dependencies: [
    LazySingleton(classType: LocalStorageService),
    LazySingleton(classType: AuthenticationService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: MachineLearningService),
  ],
)
class AppSetup {}
