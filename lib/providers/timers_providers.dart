import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'timers_providers.g.dart';

@riverpod
class CountDownNotifier extends _$CountDownNotifier {
  @override
  int build() {
    final timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      state--;
      if (state < 1) timer.cancel();
    });

    ref.onDispose(() => timer.cancel());

    return 3;
  }
}

@riverpod
class GameTimerNotifier extends _$GameTimerNotifier {
  late Timer _timer;
  @override
  int build() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) => state++);

    ref.onDispose(() => _timer.cancel());

    return 0;
  }

  void stop() => _timer.cancel();
}
