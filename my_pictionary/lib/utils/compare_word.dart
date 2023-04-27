import 'package:flutter/material.dart';
import 'package:my_pictionary/utils/score.dart';
import 'package:provider/provider.dart';

class CompareWord with ChangeNotifier {
  String _guessedWord = ''; //word form the guess_screen
  String _currentWord = ''; //word from the draw Screen

  // compare
  bool isEqualToDrawingWord(String guess) {
    return _guessedWord.toLowerCase() == _currentWord.toLowerCase();
  }

  //score
  void submitGuessWord(BuildContext context, String guessedWord) {
    _guessedWord = guessedWord;
    if (isEqualToDrawingWord('')) {
      Provider.of<Score>(context, listen: false).increment();
    }
  }

  //for the draw screen each time the word changes
  void setCurrentWord(String currentWord) {
    _currentWord = currentWord;
    print('New word generated: $_currentWord');
    notifyListeners();
  }

  // Getter for currentWord
  String get currentWord => _currentWord;
}
