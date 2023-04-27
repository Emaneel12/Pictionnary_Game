import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'package:my_pictionary/widgets/custom_button.dart';
import 'package:my_pictionary/widgets/custom_textfield.dart';

import '../widgets/custom_text.dart';
import '../responsive/responsive.dart';
import '../utils/color.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routeName = '/create-room';

  const CreateRoomScreen({Key? key}) : super(key: key);

  @override
  State<CreateRoomScreen> createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoomScreen> {
  //instance of TextEditingController that controlls the text input in a text field widget. It allows you to read, write, and listen to changes in the text value of the text field.
  final TextEditingController _nameController = TextEditingController();
  //database

  //
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // final roomRef = database.child('room/');
    return Scaffold(
      body: AppBackgroundColor(
        //widget responsive
        child: Responsive(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomText(
                    shadows: [
                      Shadow(
                        blurRadius: 96,
                        color: Color.fromARGB(255, 96, 18, 103),
                      )
                    ],
                    fontSize: 24,
                    text: 'Create a Room',
                  ),
                  SizedBox(
                    height: size.height * 0.09,
                  ),
                  CustomTextField(
                      controller: _nameController,
                      hintText: 'Enter the room Name'),
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  CustomButton(
                      onClick: () async {
                        // try {
                        //   await roomRef.set({
                        //     'id': '1',
                        //     'room Name': '$_nameController',
                        //   });
                        //   print('data written');
                        // } catch (e) {
                        //   print('you got an error $e');
                        // }
                      },
                      text: 'Create'),
                ]),
          ),
        ),
      ),
    );
  }
}
