import 'package:flutter/material.dart';

class PrimaryButtons extends StatelessWidget {
  final String name;
  final Color buttoncolor;
  final VoidCallback nav;
  const PrimaryButtons({
    super.key,
    required this.name,
    required this.buttoncolor,
    required this.nav,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: nav,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttoncolor,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          name,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
