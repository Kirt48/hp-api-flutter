import 'package:flutter/material.dart';
import 'package:flutter_hp_app/screens/characters_screen.dart';
import 'package:flutter_hp_app/screens/details_screen.dart';
import 'package:flutter_hp_app/screens/home_screen.dart';
import 'package:flutter_hp_app/screens/spell_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Harry Potter',
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeScreen(),
        'spell': (_) => const SpellScreen(),
        'characters': (_) => const CharactersScreen(),
        'details': (_) => const DetailsScreen(),
      },
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          color: Colors.black,
        ),
      ),
    );
  }
}
