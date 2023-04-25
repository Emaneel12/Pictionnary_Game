import 'package:flutter/material.dart';
import 'package:my_pictionary/main.dart';
import 'package:my_pictionary/responsive/responsive.dart';
import 'package:my_pictionary/screens/main_choice.dart';
import 'package:my_pictionary/utils/color.dart';

import '../utils/random_word.dart';
import '../widgets/costum_button.dart';

class DrawUserScreen extends StatefulWidget {
  static String routeName = './draw-user';
  const DrawUserScreen({super.key});

  //route
  mainPage(BuildContext context) {
    Navigator.pushNamed(context, MainChoice.routeName);
  }

  @override
  State<DrawUserScreen> createState() => _DrawUserScreenState();
}

class _DrawUserScreenState extends State<DrawUserScreen> {
  //instance
  final RandomWord _randomWord = RandomWord();
  int _wordCount = 0;
  String _currentWord = '';

  @override
  void initState() {
    super.initState();
    _currentWord = _randomWord.getRandomWord() ?? '';
    _randomWord.startTimer(onWordChanged: _onWordChanged);
  }

  void _onWordChanged(String newWord) {
    setState(() {
      _currentWord = newWord;
      _wordCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //fct getRandomWord
    //final String randomWord = _randomWord.getRandomWord() ?? '';

    if (_wordCount < 10) {
      //_wordCount++;
      return Scaffold(
        body: AppBackgroundColor(
          child: Responsive(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //here insert your drawing widget
                Text(
                  'Draw the word : $_currentWord',
                  style: const TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return buildFinalPage();
    }
  }

  Widget buildFinalPage() {
    return Scaffold(
      body: AppBackgroundColor(
        child: Responsive(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'End of the game',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w200, // Update font weight as desired
                  color: Colors.black,
                  height: 3,
                ),
              ),
              CustomButton(
                  onClick: () => mainPage(context), text: 'Main Choice screen'),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _randomWord.stopTimer();
    super.dispose();
  }

  mainPage(BuildContext context) {
    Navigator.pushNamed(context, MainChoice.routeName);
  }
}
