import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewMessages_client.dart';
//import 'package:flutter_application_1/widgets/view_messages.dart';

class messagesPage_client extends StatefulWidget {
  const messagesPage_client({super.key});

  @override
  State<messagesPage_client> createState() => _messagesPage_clientState();
}

class _messagesPage_clientState extends State<messagesPage_client> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewMessages_client(), //canvas
    );
  }
}