// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:stacked/stacked.dart';

import '../ui/views/chat/chat_view.dart';
import '../ui/views/game/game_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/homepage/homepage_view.dart';
import '../ui/views/reading/reading_view.dart';
import '../ui/views/settings/settings_view.dart';
import '../ui/views/signin/sign_in_view.dart';
import '../ui/views/signup/sign_up_view.dart';
import '../ui/views/startup/start_up_view.dart';

class Routes {
  static const String startupView = '/';
  static const String homeView = '/home-view';
  static const String signInView = '/sign-in-view';
  static const String signUpView = '/sign-up-view';
  static const String homePageView = '/home-page-view';
  static const String readingView = '/reading-view';
  static const String gameView = '/game-view';
  static const String chatView = '/chat-view';
  static const String settingView = '/setting-view';
  static const all = <String>{
    startupView,
    homeView,
    signInView,
    signUpView,
    homePageView,
    readingView,
    gameView,
    chatView,
    settingView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.signInView, page: SignInView),
    RouteDef(Routes.signUpView, page: SignUpView),
    RouteDef(Routes.homePageView, page: HomePageView),
    RouteDef(Routes.readingView, page: ReadingView),
    RouteDef(Routes.gameView, page: GameView),
    RouteDef(Routes.chatView, page: ChatView),
    RouteDef(Routes.settingView, page: SettingView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StartupView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    SignInView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInView(),
        settings: data,
      );
    },
    SignUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpView(),
        settings: data,
      );
    },
    HomePageView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomePageView(),
        settings: data,
      );
    },
    ReadingView: (data) {
      var args = data.getArgs<ReadingViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ReadingView(recognisedText: args.recognisedText),
        settings: data,
      );
    },
    GameView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => GameView(),
        settings: data,
      );
    },
    ChatView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChatView(),
        settings: data,
      );
    },
    SettingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SettingView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ReadingView arguments holder class
class ReadingViewArguments {
  final RecognisedText recognisedText;
  ReadingViewArguments({required this.recognisedText});
}
