import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWord {
  String getRandomWord() {
    List<String> allWords = nouns;
    int randomIndex = Random().nextInt(allWords.length);

    return allWords[randomIndex];
  }
}
