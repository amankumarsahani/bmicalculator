import 'package:flutter/material.dart';

class ContainerBox extends StatelessWidget {
  ContainerBox({required this.colour, this.cardChild});

  final Color colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(15.0)),
    );
  }
}
