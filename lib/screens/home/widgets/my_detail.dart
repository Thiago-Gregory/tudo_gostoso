import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyDetail extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;


  MyDetail({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const
          EdgeInsets.symmetric(
            vertical: 8,
          ),
          child: FaIcon(
            icon,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const
          EdgeInsets.symmetric(
            vertical: 5,
          ),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const
          EdgeInsets.only(
            bottom: 5,
          ),
          child: Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}