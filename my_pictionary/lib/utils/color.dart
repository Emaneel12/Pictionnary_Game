import 'package:flutter/material.dart';

const bgGradientColor = LinearGradient(
  begin: Alignment(0.0, 0.0),
  end: Alignment(0.0, 1.0), // Update end property to have vertical alignment
  stops: [
    0.0,
    0.3,
    1.0
  ], // Update stops property to have valid values (0.0 to 1.0)
  colors: [
    Color.fromRGBO(162, 243, 238, 0.22),
    Color.fromRGBO(179, 183, 251, 0.54),
    Color(0xFFAEA2F3),
  ],
);

//AppBackground our widget color
class AppBackgroundColor extends StatelessWidget {
  const AppBackgroundColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: bgGradientColor,
      ),
    );
  }
}
