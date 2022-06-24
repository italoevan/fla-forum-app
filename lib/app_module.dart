import 'package:app/src/modules/login_module/login_module.dart';
import 'package:app/src/presenter/splash_page.dart';
import 'package:app/src/utils/navigation/app_routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (context, arg) => const SplashPage()),
        ModuleRoute(AppRoutes.login, module: LoginModule())
      ];
}
