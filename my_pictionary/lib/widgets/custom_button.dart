import 'package:flutter/material.dart';

//button for the room choice
class CustomButton extends StatelessWidget {
  final VoidCallback onClick;
  //text
  final String text;
  const CustomButton({
    super.key,
    required this.onClick,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(
                255, 103, 71, 185), // use indigo300 color from color.dart
            blurRadius: 80,
            offset: Offset(0, 10),
            spreadRadius: 0,
          )
        ],
      ),
      child: ElevatedButton(
        onPressed: onClick,
        style: ElevatedButton.styleFrom(
            minimumSize: Size(width, 70),
            backgroundColor: Color.fromARGB(255, 228, 224, 235)),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 19,
          ),
        ),
      ),
    );
  }
}
