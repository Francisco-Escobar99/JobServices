import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewChats_client.dart';
import 'package:from_end/src/widgets/viewsLender/viewChats_lender.dart';
//import 'package:flutter_application_1/widgets/view_chats.dart';

class pageChats_lender extends StatelessWidget {
  const pageChats_lender({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: viewChats_lender(), //canvas
    );
  }
}