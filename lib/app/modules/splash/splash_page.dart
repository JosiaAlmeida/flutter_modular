// ignore_for_file: prefer_const_constructors

import 'package:flutter_modular/flutter_modular.dart';
import 'package:cronometro/app/modules/splash/splash_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key? key, this.title = 'SplashPage'}) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends ModularState<SplashPage, SplashStore> {
  // final SplashStore store = Modular.get();
  @override
  void initState() {
    store.time_splash();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScopedBuilder<SplashStore, Exception, int>(
      store: store,
      onState: (_, splash) {
        return Container(
          child: Center(
            child: Text(
              "Cronometro",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
          ),
        );
      },
    ));
  }
}
