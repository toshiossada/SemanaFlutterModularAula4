import 'package:mobx/mobx.dart';

part 'splash_controller.g.dart';

class SplashController = _SplashBase with _$SplashController;

abstract class _SplashBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
