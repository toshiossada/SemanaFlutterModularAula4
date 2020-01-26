import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:aula4/app/modules/home/home_controller.dart';
import 'package:aula4/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  HomeController home;

  setUp(() {
    
  });

  group('HomeController Test', () {
    test("First Test", () {
      expect(home, isInstanceOf<HomeController>());
    });

  });
}
