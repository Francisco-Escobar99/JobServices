import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewChats_client.dart';
import 'package:from_end/src/widgets/viewsClient/viewMenu_client.dart';
import 'package:from_end/src/widgets/viewsLender/viewMenu_lender.dart';
//import 'package:flutter_application_1/widgets/view_chats.dart';

class pageMenu_lender extends StatelessWidget {
    final int id;
  final String email;
  final String name;
  final String toke;
  const pageMenu_lender({super.key,  required this.id, required this.email, required this.name, required this.toke});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewMenu_lender(id:id,email:email,name:name,toke:toke), //canvas
    );
  }
}