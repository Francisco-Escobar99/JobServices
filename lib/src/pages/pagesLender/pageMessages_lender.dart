import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewMessages_client.dart';
//import 'package:flutter_application_1/widgets/view_messages.dart';

class messagesPage_lender extends StatefulWidget {
  const messagesPage_lender({super.key});

  @override
  State<messagesPage_lender> createState() => _messagesPage_lenderState();
}

class _messagesPage_lenderState extends State<messagesPage_lender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewMessages_client(), //canvas
    );
  }
}