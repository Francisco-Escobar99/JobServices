import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewMessages.dart';
//import 'package:flutter_application_1/widgets/view_messages.dart';

class messagesPage extends StatefulWidget {
  const messagesPage({super.key});

  @override
  State<messagesPage> createState() => _messagesPageState();
}

class _messagesPageState extends State<messagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewMessages(), //canvas
    );
  }
}