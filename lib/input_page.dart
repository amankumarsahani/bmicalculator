import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                    child: ContainerBox(
                  colour: Color(0xFF1D1E33),
                  cardChild: Column(
                    children: [],
                  ),
                )),
                Expanded(
                    child: ContainerBox(
                  colour: Color(0xFF1D1E33),
                ))
              ],
            ),
          ),
          Expanded(
            child: ContainerBox(
              colour: Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ContainerBox(
                  colour: Color(0xFF1D1E33),
                )),
                Expanded(
                    child: ContainerBox(
                  colour: Color(0xFF1D1E33),
                ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class ContainerBox extends StatelessWidget {
  ContainerBox({required this.colour, this.cardChild});

  final Color colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(15.0)),
    );
  }
}
