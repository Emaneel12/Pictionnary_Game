import 'dart:async';
import 'dart:math';
import 'package:english_words/english_words.dart';
import 'package:flutter/foundation.dart';

class RandomWord extends ChangeNotifier {
  static String? _currentWord;
  Timer? _timer;
  Function(String)? _onWordChanged;

  String? get currentWord => _currentWord;

  void startTimer({required Function(String) onWordChanged}) {
    _onWordChanged = onWordChanged;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _currentWord = getRandomWord();
      _onWordChanged?.call(_currentWord ?? '');
    });
  }

  void stopTimer() {
    _timer?.cancel();
  }

  String? getRandomWord() {
    List<String> allWords = nouns;
    int randomIndex = Random().nextInt(allWords.length);
    _currentWord = allWords[randomIndex];
    return _currentWord;
  }
}




//Incrementation 10 mot after final page 