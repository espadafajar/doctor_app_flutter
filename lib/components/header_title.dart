import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Text(
        "Find Your Desired\nDoctor",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
      ),
    );
  }
}
