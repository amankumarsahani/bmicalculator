import 'dart:math';

import 'main.dart';

class BmiBrain {
  BmiBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  late double _bmi;

  String Bmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String GetResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String GetGuidance() {
    if (_bmi >= 25) {
      return 'You are Underweight try to Eat more Food';
    } else if (_bmi > 18.5) {
      return 'You are Normal...Go for it Dude :-)';
    } else {
      return 'You are Overweight try to Avoid Food';
    }
  }
}
