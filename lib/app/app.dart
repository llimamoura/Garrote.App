import 'package:flutter/material.dart';
import 'package:garrote_app/app/routes/routes.dart';
import 'package:garrote_app/core/utils/colors.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: CustomColors.primaryColor,
          toolbarHeight: 90,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: CustomColors.grayLigth,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 14.0),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: routes,
    );
  }
}
