import 'package:app/src/consts/app_consts.dart';
import 'package:app/src/presenter/design_system/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.themeData,
        title: AppConsts.appTitle,
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate);
  }
}
