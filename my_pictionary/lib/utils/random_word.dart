import 'package:flutter/material.dart';

import 'dart:math';

class RandomWord {
  static final List<String> words = [
    'apple',
    'banana',
    'cherry',
    'orange',
    'peach',
    'pear',
    'strawberry'
  ];

  static String generate() {
    final random = Random();
    return words[random.nextInt(words.length)];
  }
}
