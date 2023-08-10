import 'package:flutter/material.dart';
import 'package:flutter_application_1/Application/theme_services.dart';
import 'package:flutter_application_1/presentation/navigation_screenss/screen_one.dart';
import 'package:flutter_application_1/presentation/navigation_screenss/screen_two.dart';
import 'package:flutter_application_1/root_bottom_navigator.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode:
                themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            home: const RootBottomNavigation(),
            routes: <String, WidgetBuilder>{
              '/root': (BuildContext context) => const RootBottomNavigation(),
              '/screenOne': (BuildContext context) => const ScreenOne(),
              '/screenTwo': (BuildContext context) => const ScreenTwo(),
            });
      },
    );
  }
}
