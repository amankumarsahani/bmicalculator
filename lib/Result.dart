import 'package:bmicalculator/Components/Layout.dart';
import 'package:bmicalculator/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyResult extends StatefulWidget {
  const MyResult({super.key});

  @override
  State<MyResult> createState() => _MyResultState();
}

class _MyResultState extends State<MyResult> {
  @override
  Widget build(BuildContext context) {
    return ContainerBox(
      colour: active,
      cardChild: Column(children: []),
    );
  }
}
