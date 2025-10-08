import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/timers_providers.dart';

class GameTimer extends ConsumerStatefulWidget {
  const GameTimer({super.key});

  @override
  ConsumerState<GameTimer> createState() => _GameTimerState();
}

class _GameTimerState extends ConsumerState<GameTimer> {
  @override
  Widget build(BuildContext context) {
    final playTime = ref.watch(gameTimerProvider);
    return Text(
      _formatTime(playTime),
      style: const TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 85, 51, 85),
      ),
    );
  }

  String _formatTime(int seconds) {
    final minutes = (seconds / 60).floor();
    final remainingSeconds = seconds % 60;
    final minutesString = minutes.toString().padLeft(2, '0');
    final secondsString = remainingSeconds.toString().padLeft(2, '0');
    return '$minutesString:$secondsString';
  }
}
