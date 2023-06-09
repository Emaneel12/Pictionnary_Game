// import 'package:flutter/material.dart';
// import 'package:painter/painter.dart';

// void main() => runApp(MyHomePage());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Painter Demo',
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final PainterController _controller = PainterController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           // Color Palette Rectangular
//           Container(
//             height: 100,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: [
//                 Container(
//                   width: 100,
//                   color: Colors.red,
//                 ),
//                 Container(
//                   width: 100,
//                   color: Colors.blue,
//                 ),
//                 Container(
//                   width: 100,
//                   color: Colors.green,
//                 ),
//                 Container(
//                   width: 100,
//                   color: Colors.yellow,
//                 ),
//               ],
//             ),
//           ),

//           // Drawing Rectangular
//           Expanded(
//             child: Painter(
//               painterController: _controller,
//             ),
//           ),

//           // Empty Rectangular
//           Container(
//             height: 50,
//           ),
//         ],
//       ),
//     );
//   }
// }
