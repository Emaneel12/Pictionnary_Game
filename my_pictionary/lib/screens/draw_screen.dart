import 'package:flutter/material.dart';
import 'package:my_pictionary/responsive/responsive.dart';
import 'package:my_pictionary/utils/color.dart';
import 'package:my_pictionary/utils/random_word.dart';
import 'package:sketcher/sketcher.dart';

class DrawUserScreen extends StatefulWidget {
  static String routeName = './draw-user';
  const DrawUserScreen({super.key});

  @override
  State<DrawUserScreen> createState() => _DrawUserScreenState();
}

class _DrawUserScreenState extends State<DrawUserScreen> {
  final SketchController _controller = SketchController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackgroundColor(
          child: Responsive(
              child: Column(
                  //         children: [
                  //           SketcherTools(
                  //           controller: _controller,
                  //           color: Colors.black,
                  //           thickness: 2.0,
                  //   ),
                  //   // Drawing Area
                  //   Expanded(
                  //     child: Sketcher(
                  //       controller: _controller,
                  //       onSketcherStream: (event) {
                  //         // Send the event to a stream
                  //       },
                  //     ),
                  //   ),
                  //   Expanded(
                  //     child: Center(
                  //         child: Text(
                  //       RandomWord.generate(),
                  //       style: const TextStyle(fontSize: 24),
                  //     )),
                  //   )
                  // ],
                  ))),
    );
  }
}
