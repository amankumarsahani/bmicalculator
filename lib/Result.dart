import 'package:bmicalculator/Components/Layout.dart';
import 'package:bmicalculator/Constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyResult extends StatelessWidget {
  MyResult(
      {required this.Bmi, required this.GetResult, required this.GetGuidance});
  final String Bmi;
  final String GetResult;
  final String GetGuidance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0A0E21),
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: Text(
                  'Your Result',
                  style: xlTextLable,
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ContainerBox(
                colour: active,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      GetResult.toUpperCase(),
                      style: varmdTextLable,
                    ),
                    Text(
                      Bmi,
                      style: varxlTextLable,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        '*NOTE : ${GetGuidance}',
                        style: vartextLable,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context, '/result');
                },
                child: Container(
                  color: Color(0xFFEB1555),
                  height: 50.0,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'RE-CALCULATE',
                      textAlign: TextAlign.center,
                      style: mdTextLable,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
