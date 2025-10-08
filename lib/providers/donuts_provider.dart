import 'package:flutter/foundation.dart';
import 'package:matching_donuts/data/donut_covers.dart';
import 'package:matching_donuts/providers/game_state_provider.dart';
import 'package:matching_donuts/providers/health_points_provider.dart';
import 'package:matching_donuts/providers/timers_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/game_state.dart';

part 'donuts_provider.g.dart';

@riverpod
class DonutsNotifier extends _$DonutsNotifier {
  late List<String> _shuffledImages;
  int? _firstSelection;
  late int _matchedCount;

  @override
  List<String> build() {
    _matchedCount = 0;
    _shuffledImages = _getShuffledImages();
    return _shuffledImages;
  }

  List<String> _getShuffledImages() {
    return (DonutCovers.covers + DonutCovers.covers)..shuffle();
  }

  void hideAll() => state = List.filled(12, DonutCovers.blank);

  void select(int index) async {
    if (ref.read(gameStateProvider) != GameState.playing) return;
    if (_firstSelection == index) return;
    state = List.from(state)..[index] = _shuffledImages[index];
    if (_firstSelection == null) {
      _firstSelection = index;
    } else if (state[_firstSelection!] != state[index]) {
      //if mismatch
      await ref.read(gameStateProvider.notifier).pause();
      state = List.from(state)
        ..[_firstSelection!] = DonutCovers.blank
        ..[index] = DonutCovers.blank;
      _firstSelection = null;
      ref.read(healthPointsProvider.notifier).decrement();
    } else {
      //if match
      _firstSelection = null;
      _matchedCount++;

      //if all donuts are matched
      if (listEquals(state, _shuffledImages)) {
        ref.invalidate(countDownProvider);
        ref.read(gameStateProvider.notifier).levelUp();
        ref.read(healthPointsProvider.notifier).increment();
        _shuffledImages = _getShuffledImages();
        state = _shuffledImages;
      }
    }
  }

  int getMatchedCount() => _matchedCount;
}

@riverpod
String donut(Ref ref, int index) => ref.watch(donutsProvider)[index];
