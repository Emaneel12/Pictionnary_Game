import 'package:flutter/material.dart';
import 'package:my_pictionary/responsive/responsive.dart';
import 'package:my_pictionary/utils/color.dart';

import 'package:provider/provider.dart';
import '../resources/random_word.dart';

class GuessUserScreen extends StatefulWidget {
  static const routeName = './guess-user';

  const GuessUserScreen({Key? key}) : super(key: key);

  @override
  State<GuessUserScreen> createState() => _GuessUserScreenState();
}

class _GuessUserScreenState extends State<GuessUserScreen> {
  final TextEditingController _guessController = TextEditingController();

  void _submitGuessWord(BuildContext context) {
    // final guessWord = Provider.of<GuessWord>(context, listen: false);
    // final String drawingWord = RandomWord.;
    final String guessedWord = _guessController.text;
    // guessWord.submitGuessWord(context, guessedWord, drawingWord);
    _guessController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackgroundColor(
        child: Responsive(
          child: Column(
            children: [
              Expanded(
                child: Container(), // widget to show stream result
              ),
              SizedBox(
                height: 150,
                width: 300,
                child: TextField(
                  controller: _guessController,
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    hintText: 'Type your guess here',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () {
                        _submitGuessWord(context);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
