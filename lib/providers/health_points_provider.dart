import 'package:matching_donuts/providers/game_state_provider.dart';
import 'package:matching_donuts/providers/timers_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'health_points_provider.g.dart';

@riverpod
class HealthPointsNotifier extends _$HealthPointsNotifier {
  final maxHealth = 3;
  @override
  int build() => maxHealth;

  void increment() {
    if (state < maxHealth) state++;
  }

  void decrement() {
    state--;
    if (state < 0) {
      //End game
      ref.read(gameTimerProvider.notifier).stop();
      ref.read(gameStateProvider.notifier).end();
    }
  }
}
