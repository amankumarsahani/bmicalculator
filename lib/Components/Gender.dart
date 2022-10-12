import 'package:flutter/material.dart';
import '../Constants.dart';

class GenderCard extends StatelessWidget {
  GenderCard({required this.icon, required this.gender});
  final IconData icon;
  String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        hr,
        Text(
          gender,
          style: textLable,
        )
      ],
    );
  }
}
