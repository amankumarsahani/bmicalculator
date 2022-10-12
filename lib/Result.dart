import 'package:bmicalculator/Components/Layout.dart';
import 'package:bmicalculator/Constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyResult extends StatefulWidget {
  const MyResult({super.key});

  @override
  State<MyResult> createState() => _MyResultState();
}

class _MyResultState extends State<MyResult> {
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
                      'Normal'.toUpperCase(),
                      style: varmdTextLable,
                    ),
                    Text(
                      '10000',
                      style: varxlTextLable,
                    ),
                    Text(
                      '*NOTE : You have More weight Than Other Exercise Daily',
                      style: vartextLable,
                      textAlign: TextAlign.center,
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
  }
}








// Expanded(
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 child: Container(
//                   color: Color(0xFFEB1555),
//                   height: 50.0,
//                   width: double.infinity,
//                   child: Center(
//                     child: Text(
//                       'RE-CALCULATE',
//                       textAlign: TextAlign.center,
//                       style: mdTextLable,
//                     ),
//                   ),
//                 ),
//               ),
//             ),