import 'package:flutter/material.dart';
import 'package:lexiedu/app/app.router.dart';
import 'package:lexiedu/app/app.locator.dart';
import 'package:lexiedu/styles/themes.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

void main() async {
  await ThemeManager.initialise();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      themes: themes,
      builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
        title: 'Lexiedu',
        theme: regularTheme,
        darkTheme: darkTheme,
        themeMode: themeMode,
        navigatorKey: StackedService.navigatorKey,
        onGenerateRoute: StackedRouter().onGenerateRoute,
      ),
    );
  }
}
