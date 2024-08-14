import 'package:daily_battle/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DailyBattleApp());
}

class DailyBattleApp extends StatelessWidget {
  const DailyBattleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Battle',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
