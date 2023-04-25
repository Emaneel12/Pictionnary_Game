import 'package:flutter/material.dart';
import 'package:my_pictionary/utils/score.dart';
import 'package:provider/provider.dart';

class CompaireWord with ChangeNotifier {
  String _guessedWord = '';

  bool isEqualToDrawingWord(String drawingWord) {
    return _guessedWord.toLowerCase() == drawingWord.toLowerCase();
  }

  void submitGuessWord(
      BuildContext context, String guessedWord, String drawingWord) {
    _guessedWord = guessedWord;
    if (isEqualToDrawingWord(drawingWord)) {
      Provider.of<Score>(context, listen: false).increment();
    }
  }
}
