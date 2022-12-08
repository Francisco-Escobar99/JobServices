import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewChats_client.dart';
import 'package:from_end/src/widgets/viewsClient/viewMenu_client.dart';
//import 'package:flutter_application_1/widgets/view_chats.dart';

class menuPage_client extends StatelessWidget {
  final int id;
  final String email;
  final String name;
  final String toke;
  const menuPage_client({super.key,  required this.id, required this.email, required this.name, required this.toke});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewMenu_client(id:id,email:email,name:name,toke:toke), //canvas
    );
  }
}