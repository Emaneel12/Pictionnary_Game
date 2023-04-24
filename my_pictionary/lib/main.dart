// import 'package:flutter/material.dart';
// import 'package:my_pictionary/screens/create_room_screen.dart';
// import 'package:my_pictionary/screens/join_room_screen.dart';
// import 'screens/main_room_choice.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({
//     super.key,
//   });

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'my_pictionary',
//       theme: ThemeData(
//         useMaterial3: true,
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: const Color.fromARGB(255, 83, 49, 157),
//         ),
//       ),
//       //route to other pages(widgets)
//       routes: {
//         MainRoomChoice.routeName: (context) => const MainRoomChoice(),
//         JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
//         CreateRoomScreen.routeName: (context) => const CreateRoomScreen(),
//       },
//       //initialRoute: MainRoomChoice.routeName,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:painter/painter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Painter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PainterController _controller = PainterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Color Palette Rectangular
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  width: 100,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),

          // Drawing Rectangular
          Expanded(
            child: Painter(
              _controller,
            ),
          ),

          // Empty Rectangular
          Container(
            height: 50,
          ),
        ],
      ),
    );
  }
}
