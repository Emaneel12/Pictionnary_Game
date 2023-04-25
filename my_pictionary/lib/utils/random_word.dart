import 'dart:async';
import 'dart:math';
import 'package:english_words/english_words.dart';
import 'package:flutter/foundation.dart';

class RandomWord extends ChangeNotifier {
  String? _currentWord;
  Timer? _timer;
  Function(String)? _onWordChanged;

  String? get currentWord => _currentWord;

  void startTimer({required Function(String) onWordChanged}) {
    _onWordChanged = onWordChanged;
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
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
    return allWords[randomIndex];
  }
}




//Incrementation 10 mot after final page 
