import 'package:flutter/material.dart';
import 'package:my_pictionary/responsive/responsive.dart';
import 'package:my_pictionary/screens/draw_screen.dart';
import 'package:my_pictionary/screens/guess_screen.dart';
import 'package:my_pictionary/utils/color.dart';
import 'package:my_pictionary/widgets/costum_button.dart';

class MainChoice extends StatelessWidget {
  static String routeName = './main-choice';
  const MainChoice(BuildContext context, {super.key});

  drawUser(BuildContext context) {
    Navigator.pushNamed(context, DrawUserScreen.routeName);
  }

  guessUser(BuildContext context) {
    Navigator.pushNamed(context, GuessUserScreen.routeName);
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
