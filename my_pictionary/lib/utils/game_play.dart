// file  code responsible for managing the flow of the game.
import 'package:flutter/material.dart';
import 'package:my_pictionary/screens/draw_screen.dart';
import 'package:my_pictionary/screens/guess_screen.dart';

class GamePlay {
  static void startDrawing(BuildContext context) {
    Navigator.pushNamed(context, DrawUserScreen.routeName);
  }

  static void startGuessing(BuildContext context) {
    Navigator.pushNamed(context, GuessUserScreen.routeName);
  }
}
