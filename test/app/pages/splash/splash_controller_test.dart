import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:aula4/app/pages/splash/splash_controller.dart';
import 'package:aula4/app/app_module.dart';

void main() {
  initModule(AppModule());
  SplashController splash;

  setUp(() {
    splash = AppModule.to.get<SplashController>();
  });

  group('SplashController Test', () {
    test("First Test", () {
      expect(splash, isInstanceOf<SplashController>());
    });

    test("Set Value", () {
      expect(splash.value, equals(0));
      splash.increment();
      expect(splash.value, equals(1));
    });
  });
}
