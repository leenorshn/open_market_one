import 'package:flutter/material.dart';
import 'package:open_market_one/screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.blueGrey[100],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          // type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.lime,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.blueGrey[600],
        ),
      ),
      home: const MainScreen(),
    );
  }
}
