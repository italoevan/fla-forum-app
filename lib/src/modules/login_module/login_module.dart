import 'package:app/src/modules/login_module/src/presenter/pages/login/login_controller.dart';
import 'package:app/src/modules/login_module/src/presenter/pages/login/login_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (context, arg) => const LoginPage())
      ];

  @override
  List<Bind<Object>> get binds =>
      [Bind<ILoginController>((i) => LoginController())];
}
