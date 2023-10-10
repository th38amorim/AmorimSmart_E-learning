import 'package:amorim_smart_elearning/app/home/presentation/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
    // r.module('/b-module', module: BModule());
  }
}
