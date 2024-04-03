import 'package:flutter/material.dart';

class PurpleButton extends StatelessWidget {
  PurpleButton({super.key, required this.icon, required this.onClick});

  Function() onClick;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            minimumSize: Size(100, 40),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        onPressed: onClick,
        child: Icon(
          icon,
          size: 40,
        ));
  }
}
