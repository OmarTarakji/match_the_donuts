import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../providers/timers_providers.dart';

class CountDown extends ConsumerWidget {
  const CountDown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final secondsRemaining = ref.watch(countDownProvider);
    return Text(
      secondsRemaining > 0 ? '$secondsRemaining' : 'Go',
      style: GoogleFonts.sriracha(fontSize: 50, color: Colors.pinkAccent),
    );
  }
}
