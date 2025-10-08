import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/game_state.dart';
import '../providers/game_state_provider.dart';
import '../widgets/game_screen/count_down.dart';
import '../widgets/game_screen/game_button.dart';
import '../widgets/game_screen/game_timer.dart';
import '../widgets/game_screen/health_bar.dart';
import 'score_screen.dart';

class GameScreen extends ConsumerWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameState = ref.watch(gameStateProvider);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/blurred-background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Count down to start the game
                const CountDown(),
                HealthBar(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: ref.read(gameStateProvider.notifier).restart,
                      icon: const Icon(
                        Icons.refresh,
                        color: Color.fromARGB(255, 85, 51, 85),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const GameTimer(),
                  ],
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  padding: EdgeInsets.all(16),
                  itemBuilder: (context, index) => GameButton(index: index),
                  itemCount: 12,
                ),
              ],
            ),
          ),
          if (gameState == GameState.ended) const ScoreScreen(),
        ],
      ),
    );
  }
}
