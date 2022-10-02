import 'package:flutter/material.dart';
import 'package:flutter_ui_test/screens/matches/matches.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter-ui-test',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff4f168f),
        primarySwatch: Colors.deepPurple,
        primaryColor: const Color(0xff4e168e),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff000458), elevation: 0.0),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(color: Color(0xffA85FFF)),
          unselectedIconTheme: IconThemeData(color: Color(0xffA85FFF)),
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
        ),
        textTheme: Theme.of(context)
            .textTheme
            .apply(displayColor: Colors.white, bodyColor: Colors.white),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                side: MaterialStateProperty.all(
                    const BorderSide(width: 1.0, color: Colors.white)),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 4)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))))),
        tabBarTheme: TabBarTheme(
            labelStyle: const TextStyle(color: Colors.white),
            unselectedLabelColor: const Color(0xff8b47dc),
            indicator: BoxDecoration(
                color: const Color(0xff4f168f),
                border:
                    Border.all(width: 0.0, color: const Color(0xff4f168f)))),
      ),
      home: const LiveMatchPage(),
    );
  }
}
