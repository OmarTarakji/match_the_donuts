import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matching_donuts/providers/timers_providers.dart';

import '../providers/donuts_provider.dart';
import '../providers/game_state_provider.dart';

class ScoreScreen extends ConsumerWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final time = ref.read(gameTimerProvider);
    final minutes = (time / 60).floor();
    final seconds = time % 60;

    final matchedCount = ref.read(donutsProvider.notifier).getMatchedCount();
    final score = (matchedCount * 100 - time * 10).clamp(0, double.infinity);

    final String extra = minutes != 0 ? ' $minutes minutes and' : '';
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
      child: Center(
        child: Container(
          margin: const EdgeInsets.all(30),
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white.withAlpha(123),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Game Over',
                textAlign: TextAlign.center,
                style: GoogleFonts.sriracha(
                  fontSize: 50,
                  color: Colors.pinkAccent,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'You matched $matchedCount donuts in$extra $seconds seconds!',
                textAlign: TextAlign.center,
                style: GoogleFonts.quicksand(fontSize: 18),
              ),
              const SizedBox(height: 20),
              Text(
                'Your Score is:',
                style: GoogleFonts.quicksand(
                  fontSize: 16,
                  color: Colors.pink[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '$score',
                style: GoogleFonts.sriracha(
                  fontSize: 28,
                  color: Colors.pink[400],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_rounded),
                    iconSize: 35,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 40),
                  IconButton(
                    icon: const Icon(Icons.refresh_rounded),
                    iconSize: 35,
                    onPressed: ref.read(gameStateProvider.notifier).restart,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
