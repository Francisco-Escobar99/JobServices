import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewChats_client.dart';
import 'package:from_end/src/widgets/viewsClient/viewMenu_client.dart';
//import 'package:flutter_application_1/widgets/view_chats.dart';

class menuPage_client extends StatelessWidget {
  const menuPage_client({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewMenu_client(), //canvas
    );
  }
}