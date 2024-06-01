import 'package:flutter/material.dart';
import 'package:garrote_app/core/utils/colors.dart';
import 'package:garrote_app/presentation/widgets/logo_widget.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 5),
    ).then(
      (_) => Navigator.of(context).pushReplacementNamed('/login'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: CustomColors.primaryColor,
      body: Center(
        child: LogoWidget(height: 240, width: 240),
      ),
    );
  }
}
