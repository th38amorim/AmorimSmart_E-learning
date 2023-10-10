import 'package:amorim_smart_elearning/app/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.lightTheme,
      routerConfig: Modular.routerConfig,
    );
  }
}
