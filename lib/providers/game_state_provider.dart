import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/game_state.dart';
import 'donuts_provider.dart';
import 'health_points_provider.dart';
import 'timers_providers.dart';

part 'game_state_provider.g.dart';

@riverpod
class GameStateNotifier extends _$GameStateNotifier {
  @override
  GameState build() {
    ref.listen(countDownProvider, (_, next) {
      debugPrint('LOG: $next');
      if (next == 0) {
        state = GameState.playing;
        ref.read(donutsProvider.notifier).hideAll();
      }
    });
    return GameState.starting;
  }

  Future<void> pause() async {
    if (state != GameState.playing) return;
    state = GameState.paused;
    await Future.delayed(const Duration(milliseconds: 500));
    state = GameState.playing;
  }

  void levelUp() => state = GameState.starting;

  void end() => state = GameState.ended;

  void restart() {
    state = GameState.starting;
    ref.invalidate(gameTimerProvider);
    ref.invalidate(countDownProvider);
    ref.invalidate(donutsProvider);
    ref.invalidate(healthPointsProvider);
  }
}
