import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final redirectTimeProvider =
    StateProvider<RedirectTime>((_) => RedirectTime(5));

class RedirectTime extends ValueNotifier<int> {
  RedirectTime(super.value);

  void resetCount() {
    value = 5;
  }
}

final timerProvider = Provider<Timer>(
  (ref) => Timer.periodic(
    const Duration(seconds: 1),
    (Timer timer) {
      ref.read(redirectTimeProvider).value--;
    },
  ),
);
