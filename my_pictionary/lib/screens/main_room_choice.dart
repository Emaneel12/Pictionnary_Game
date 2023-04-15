import 'package:flutter/material.dart';
import '../utils/color.dart';

class MainRoomChoice extends StatelessWidget {
  const MainRoomChoice({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackgroundColor(
        // Move AppBackgroundColor here
        child: Container(
          child: Center(
            child: Text('Welcome to pictionary'),
          ),
        ),
      ),
    );
  }
}
