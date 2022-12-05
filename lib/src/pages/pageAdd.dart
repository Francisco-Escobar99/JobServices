import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewAdd.dart';
import 'package:from_end/src/widgets/viewChats.dart';
//import 'package:flutter_application_1/widgets/view_chats.dart';

class addPage extends StatelessWidget {
  const addPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewAdd(), //canvas
    );
  }
}