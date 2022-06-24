import 'package:app/app_module.dart';
import 'package:app/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main(List<String> args) {
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
