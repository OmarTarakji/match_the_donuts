import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matching_donuts/providers/donuts_provider.dart';

class GameButton extends ConsumerWidget {
  final int index;

  const GameButton({required this.index, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final cover = ref.watch(donutsNotifierProvider)[index];
    //todo: replace with gesture detector
    return GestureDetector(
      onTap: () {
        ref.read(donutsProvider.notifier).select(index);
        // if (cover == blankCover &&
        //     ref.read(gameNotifierProvider) != GameState.pause) {
        //   final state = ref.read(donutsNotifierProvider.notifier).flipUp(index);
        //   if (state == 'match') {
        //     donutsNumber++;
        //   } else if (state == 'mismatch') {
        //     ref.read(hpProvider.notifier).decrement();
        //     final hp = ref.read(hpProvider);
        //     if (hp == 0) {
        //       ref
        //           .read(gameNotifierProvider.notifier)
        //           .setGameState(GameState.none);
        //     } else {
        //       ref
        //           .read(gameNotifierProvider.notifier)
        //           .setGameState(GameState.pause);
        //       Future.delayed(const Duration(milliseconds: 350)).then((_) {
        //         ref.read(donutsNotifierProvider.notifier).flipDown(index);
        //         ref
        //             .read(gameNotifierProvider.notifier)
        //             .setGameState(GameState.active);
        //       });
        //     }
        //   } else if (state == 'complete') {
        //     ref
        //         .read(gameNotifierProvider.notifier)
        //         .setGameState(GameState.levelUp);
        //   }
        // }
      },
      child: Image.asset(ref.watch(donutProvider(index))),
    );
  }
}
