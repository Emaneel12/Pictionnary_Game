import 'package:flutter/material.dart';
import 'package:my_pictionary/responsive/responsive.dart';
import 'package:my_pictionary/utils/color.dart';

import '../utils/game_play.dart';
import '../widgets/custom_button.dart';

class MainChoice extends StatelessWidget {
  static String routeName = './main-choice';
  const MainChoice(BuildContext context, {super.key});

  drawUser(BuildContext context) {
    GamePlay.startDrawing(context);
  }

  guessUser(BuildContext context) {
    GamePlay.startGuessing(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackgroundColor(
          child: Responsive(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Welcome to pictionary',
            style: TextStyle(
              fontSize: 24, // font size as desired
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 3,
            ),
          ),
          CustomButton(
            onClick: () => drawUser(context),
            text: 'Draw',
          ),
          const SizedBox(height: 20),
          CustomButton(
            onClick: () => guessUser(context),
            text: 'Guess the word',
          ),
        ]),
      )),
    );
  }
}
