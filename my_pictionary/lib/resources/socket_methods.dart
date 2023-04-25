import 'package:flutter/material.dart';
import 'package:my_pictionary/screens/game_screen.dart';

import 'socket_client.dart';

class SocketMethods {
  final _socketClient = SocketClient.instance.socket!;

//sending the socketclient to the server with data
//creating a room evrytime we click create room
  void createRoom(String login) {
    if (login.isNotEmpty) {
      _socketClient.emit('createRoom', {
        'login': login,
      });
    }
  }

  // creating a listener
  void createRoomSuccessListener(BuildContext context) {
    _socketClient.on('createRoomSuccess', (room) {
      print(room);
      Navigator.pushNamed(context, GameScreen.routeName);
    });
  }
}
