import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:my_pictionary/responsive/responsive.dart';
import 'package:my_pictionary/screens/draw_screen.dart';
import 'package:my_pictionary/screens/guess_screen.dart';
import 'package:my_pictionary/screens/main_choice.dart';
import 'package:my_pictionary/screens/main_room_choice.dart';
import 'package:my_pictionary/screens/create_room_screen.dart';
import 'package:my_pictionary/screens/join_room_screen.dart';
import 'package:my_pictionary/utils/color.dart';
import 'package:my_pictionary/widgets/custom_button.dart';
import 'package:my_pictionary/widgets/custom_text.dart';

void main() async {
  // Starting the Firebase app
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fpApp = Firebase.initializeApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Pictionary',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: FutureBuilder(
        future: _fpApp,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print('You have an error ${snapshot.error.toString()}');
            return Text('something went Wrong!');
          } else if (snapshot.hasData) {
            return MyHomePage();
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      //MyHomePage(),
      // Routes to other pages(widgets)
      routes: {
        MainRoomChoice.routeName: (context) => MainRoomChoice(),
        // ignore: prefer_const_constructors
        JoinRoomScreen.routeName: (context) => JoinRoomScreen(),
        // ignore: prefer_const_constructors
        CreateRoomScreen.routeName: (context) => CreateRoomScreen(),
        MainChoice.routeName: (context) => MainChoice(context),
        // ignore: prefer_const_constructors
        GuessUserScreen.routeName: (context) => GuessUserScreen(),
        // ignore: prefer_const_constructors
        DrawUserScreen.routeName: (context) => DrawUserScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBackgroundColor(
      child: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomText(
              shadows: [
                Shadow(
                  blurRadius: 96,
                  color: Color.fromARGB(255, 96, 18, 103),
                )
              ],
              fontSize: 30,
              text: 'Welcome to Pictionary',
            ),
            CustomButton(
              onClick: () {
                Navigator.pushNamed(context, MainRoomChoice.routeName);
              },
              text: 'Get Started',
            ),
          ],
        ),
      ),
    ));
  }
}
