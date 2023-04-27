import 'package:flutter/material.dart';
// import 'package:my_pictionary/screens/draw_screen.dart';
// import 'package:my_pictionary/screens/guess_screen.dart';

// import 'package:my_pictionary/screens/main_choice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
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
      // routes: {
      //   MainChoice.routeName: (context) => MainChoice(context),
      //   GuessUserScreen.routeName: (context) => GuessUserScreen(),
      //   DrawUserScreen.routeName: (context) => DrawUserScreen(),
      // },

      // initialRoute: MainChoice.routeName,
    );
  }
}
