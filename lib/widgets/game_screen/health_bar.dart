import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matching_donuts/providers/health_points_provider.dart';

// To change max HP:
// 1- change value passed to GameScreen from main.dart
// 2- change value set to the hpProvider in start_screen.dart
class HealthBar extends ConsumerWidget {
  final int maxHP = 3;

  const HealthBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hp = ref.watch(healthPointsProvider);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < maxHP; i++)
          if (i < hp)
            Padding(
              padding: const EdgeInsets.all(4),
              child: Image.asset('assets/images/health-point.png', height: 30),
            )
          else
            Padding(
              padding: const EdgeInsets.all(4),
              child: Image.asset(
                'assets/images/health-point-damaged.png',
                height: 30,
              ),
            ),
      ],
    );
  }
}
