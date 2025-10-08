import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Headline extends StatelessWidget {
  const Headline({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Stack(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Let\'s match ',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 8
                  ..color = Colors.purpleAccent,
                fontSize: 60,
              ),
              children: [
                TextSpan(
                  text: 'some ',
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 8
                      ..color = Colors.yellow[700]!,
                    fontSize: 60,
                  ),
                ),
                TextSpan(
                  text: 'Donuts!',
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 8
                      ..color = Colors.green[700]!,
                    fontSize: 60,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Let\'s match some Donuts!',
              style: GoogleFonts.quicksand(
                color: Colors.white.withAlpha(178),
                fontWeight: FontWeight.bold,
                fontSize: 60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
