import 'package:flutter/material.dart';
import 'utils/color.dart';
import 'screens/main_room_choice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my_pictionary',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 113, 194, 226),
        ),
      ),
      home: MainRoomChoice(),
    );
  }
}
