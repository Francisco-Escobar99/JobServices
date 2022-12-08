import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewChats_client.dart';
import 'package:from_end/src/widgets/viewsClient/viewMenu_client.dart';
//import 'package:flutter_application_1/widgets/view_chats.dart';

class menuPage_lender extends StatelessWidget {
  const menuPage_lender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewMenu_client(email: '', id: 1, name: '', toke: '',), //canvas
    );
  }
}