import 'package:app/src/utils/navigation/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.to.pushReplacementNamed(AppRoutes.login);
    return Container();
  }
}
