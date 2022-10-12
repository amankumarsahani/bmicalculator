import 'package:bmicalculator/Home.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'Result.dart';
import 'Calculator_brain.dart';
import 'Constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    BmiBrain calc = BmiBrain(height: height, weight: weight);

    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/result': (context) => MyResult(
              Bmi: calc.Bmi(),
              GetResult: calc.GetResult(),
              GetGuidance: calc.GetGuidance(),
            ),
      },
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
      ),
    );
  }
}
