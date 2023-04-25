import 'dart:math';

import 'package:english_words/english_words.dart';

class RandomWord {
  String? getRandomWord() {
    List<String> allWords = nouns;
    int randomIndex = Random().nextInt(allWords.length);
    return allWords[randomIndex];
  }
}
//Incrementation 10 mot after final page 
