import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tudo_gostoso/style.dart';

class MyTitle extends StatelessWidget {
  final IconData icon;
  final String title;

  MyTitle({
    required this.icon,
    required this.title,
  }); 
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const
      EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            icon,
            color: orangeTheme,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: TextStyle(
              color: orangeTheme,
              fontSize: 22,
              fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }
}