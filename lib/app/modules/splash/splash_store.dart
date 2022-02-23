import 'package:cronometro/app/modules/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

class SplashStore extends NotifierStore<Exception, int> {
  SplashStore() : super(0);

  Future<void> time_splash() async {
    await Future.delayed(
        Duration(seconds: 5), () => Modular.to.pushNamed("/home"));
  }
}
