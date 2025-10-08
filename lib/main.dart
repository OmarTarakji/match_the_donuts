import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matching_donuts/screens/game_screen.dart';
import 'package:matching_donuts/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  final _player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initAudio();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    debugPrint('LOG: App state: $state');
    if (state == AppLifecycleState.paused) {
      _player.pause(); // You can use stop() if you want to release resources
    } else if (state == AppLifecycleState.resumed) {
      _player.resume(); // Resume playback when app returns
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: 'JosefinSans'
      ),
      home: const HomeScreen(),
      routes: {
        '/start-screen': (context) => const HomeScreen(),
        '/game-screen': (context) => const GameScreen(),
      },
    );
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  void _initAudio() {
    _player.setReleaseMode(ReleaseMode.loop);
    _player.play(AssetSource('audio/cinema-sins.mp3'));
  }
}
