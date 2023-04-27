import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_pictionary/screens/draw_screen.dart';
import 'package:my_pictionary/screens/guess_screen.dart';

import 'package:my_pictionary/screens/main_choice.dart';
import 'package:my_pictionary/screens/main_room_choice.dart';

import 'screens/create_room_screen.dart';
import 'screens/join_room_screen.dart';

void main() async {
  // Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Run the app
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my_pictionary',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 83, 49, 157),
        ),
      ),
      //route to other pages(widgets)
      routes: {
        MainRoomChoice.routeName: (context) => const MainRoomChoice(),
        JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
        CreateRoomScreen.routeName: (context) => const CreateRoomScreen(),
        MainChoice.routeName: (context) => MainChoice(context),
        GuessUserScreen.routeName: (context) => GuessUserScreen(),
        DrawUserScreen.routeName: (context) => DrawUserScreen(),
      },

      initialRoute: MainRoomChoice.routeName,
    );
  }
}
