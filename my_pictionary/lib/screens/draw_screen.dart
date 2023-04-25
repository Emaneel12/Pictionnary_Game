import 'package:flutter/material.dart';
import 'package:my_pictionary/responsive/responsive.dart';
import 'package:my_pictionary/utils/color.dart';

class DrawUserScreen extends StatefulWidget {
  static String routeName = './draw-user';
  const DrawUserScreen({super.key});

  @override
  State<DrawUserScreen> createState() => _DrawUserScreenState();
}

class _DrawUserScreenState extends State<DrawUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackgroundColor(
          child: Responsive(
              child: Column(
        children: [AppBar(), TextField()],
      ))),
    );
  }
}
