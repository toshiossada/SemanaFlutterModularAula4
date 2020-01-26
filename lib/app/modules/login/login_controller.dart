import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginBase with _$LoginController;

abstract class _LoginBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
