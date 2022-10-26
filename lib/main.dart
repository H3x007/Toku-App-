import 'package:flutter/material.dart';
import 'package:toku_app/screens/home_screen.dart';
import 'package:toku_app/styles/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldColor,
        appBarTheme: AppBarTheme(
          backgroundColor: appBarColor,
        ),
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
