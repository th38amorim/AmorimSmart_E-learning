import 'package:amorim_smart_elearning/app/main_page/main_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const MainPage());
    // r.module('/b-module', module: BModule());
  }
}
