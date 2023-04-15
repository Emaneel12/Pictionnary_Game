import 'package:flutter/material.dart';
import 'utils/color.dart';
import 'screens/main_room_choice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        home: Scaffold(
          body: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: bgGradientColor,
                  ),
                ),
              ),
              MainRoomChoice(),
            ],
          ),
        ));
  }
}
