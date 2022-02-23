import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_triple/flutter_triple.dart';

@immutable
class HomeModel {
  late int segundos;
  HomeModel({this.segundos = 0});

  HomeModel copyWith({
    int? segundos = 0,
  }) {
    return HomeModel(
      segundos: segundos ?? this.segundos,
    );
  }
}

class HomeStore extends NotifierStore<Exception, HomeModel> {
  HomeStore() : super(HomeModel());

  Future<void> Start() async {
    setLoading(true);
    await Future.delayed(Duration(seconds: 1));
    state.segundos++;
    update(state);
    setLoading(false);
  }

  Future<void> increment() async {
    setLoading(true);

    await Future.delayed(Duration(seconds: 1));

    // int value = state + 1;
    // if (value < 5) {
    //   update(value);
    // } else {
    //   setError(Exception('Error: state not can be > 4'));
    // }

    setLoading(false);
  }
}
