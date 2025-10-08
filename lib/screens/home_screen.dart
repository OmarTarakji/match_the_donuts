import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matching_donuts/widgets/home_screen/headline.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Headline(),
            FilledButton(
              onPressed: () {
                // ref.read(gameStateProvider.notifier).initializeGame();
                Navigator.pushNamed(context, '/game-screen');
              },
              style: FilledButton.styleFrom(
                backgroundColor: Colors.pink.withAlpha(200),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
                textStyle: GoogleFonts.sriracha(fontSize: 24),
              ),
              child: const Text('Play'),
            ),
          ],
        ),
      ),
    );
  }
}
