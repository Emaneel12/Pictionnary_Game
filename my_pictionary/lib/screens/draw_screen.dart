import 'package:flutter/material.dart';
import 'package:my_pictionary/responsive/responsive.dart';
import 'package:my_pictionary/utils/color.dart';

import '../utils/random_word.dart';

class DrawUserScreen extends StatefulWidget {
  static String routeName = './draw-user';
  const DrawUserScreen({super.key});

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
    });
  }

  @override
  Widget build(BuildContext context) {
    //fct getRandomWord
    //final String randomWord = _randomWord.getRandomWord() ?? '';

    if (_wordCount < 10) {
      _wordCount++;
      return Scaffold(
        body: AppBackgroundColor(
          child: Responsive(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Your word is: $_currentWord',
                  style: const TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        body: AppBackgroundColor(
          child: Responsive(
            child: Column(
              children: const [
                Text('Final Page'),
              ],
            ),
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    _randomWord.stopTimer();
    super.dispose();
  }
}
