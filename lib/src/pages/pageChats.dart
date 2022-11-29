import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewChats.dart';
//import 'package:flutter_application_1/widgets/view_chats.dart';

class chatsPage extends StatelessWidget {
  const chatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: viewChats(), //canvas
    );
  }
}