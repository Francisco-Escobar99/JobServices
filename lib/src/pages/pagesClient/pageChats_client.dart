import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewChats_client.dart';
//import 'package:flutter_application_1/widgets/view_chats.dart';

class chatsPage_client extends StatelessWidget {
  const chatsPage_client({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: viewChats_client(), //canvas
    );
  }
}