import 'package:app/src/modules/login_module/src/presenter/pages/login/login_controller.dart';
import 'package:app/src/presenter/design_system/components/generic_button.dart';
import 'package:app/src/presenter/design_system/components/generic_text_field.dart';
import 'package:app/src/presenter/design_system/dimens/app_paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = Modular.get<ILoginController>();
  var obscureText = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: AppPaddings.verticalPadding,
              horizontal: AppPaddings.horizontalPadding),
          child: Column(
            children: [
              GenericTextField.email(),
              const Divider(),
              Obx(
                () => GenericTextField.password(
                  eyeTap: () {
                    obscureText.value = !obscureText.value;
                  },
                  obscureText: obscureText.value,
                ),
              ),
              const Divider(),
              GenericButton.primary(
                  onPressed: () {}, child: const Text("Logar"))
            ],
          ),
        ));
  }
}
