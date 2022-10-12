import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Components/Gender.dart';
import 'Components/Layout.dart';
import 'Constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedGender;
  Color maleColorCard = inactive;
  Color femaleColorCard = inactive;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0A0E21),
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = genderType.male;
                    });
                  },
                  child: ContainerBox(
                    colour:
                        selectedGender == genderType.male ? active : inactive,
                    cardChild: GenderCard(
                      icon: FontAwesomeIcons.mars,
                      gender: 'MALE',
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = genderType.female;
                    });
                  },
                  child: ContainerBox(
                    colour:
                        selectedGender == genderType.female ? active : inactive,
                    cardChild: GenderCard(
                      icon: FontAwesomeIcons.venus,
                      gender: 'FEMALE',
                    ),
                  ),
                ))
              ],
            ),
          ),
          Expanded(
            child: ContainerBox(
              colour: active,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    textAlign: TextAlign.center,
                    style: textLable,
                  ),
                  hr,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: lgTextLable,
                      ),
                      Text(
                        'cm',
                        style: textLable,
                      )
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    onChanged: (double val) {
                      setState(() {
                        height = val.toInt();
                      });
                    },
                    min: 80,
                    max: 220,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ContainerBox(
                  colour: inactive,
                )),
                Expanded(
                    child: ContainerBox(
                  colour: inactive,
                ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
