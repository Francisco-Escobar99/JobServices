import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewChats.dart';
import 'package:from_end/src/widgets/viewMenu.dart';
//import 'package:flutter_application_1/widgets/view_chats.dart';

class menuPage extends StatelessWidget {
  const menuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewMenu(), //canvas
    );
  }
}