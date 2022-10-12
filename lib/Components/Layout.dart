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

class RoundBtn extends StatelessWidget {
  RoundBtn({required this.icon, required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(height: 50.0, width: 50.0),
      onPressed: () {
        onPressed();
      },
    );
  }
}
