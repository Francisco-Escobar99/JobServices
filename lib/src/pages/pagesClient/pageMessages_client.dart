import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewMessages_client.dart';
//import 'package:flutter_application_1/widgets/view_messages.dart';

class pageMessages_client extends StatefulWidget {
  const pageMessages_client({super.key});

  @override
  State<pageMessages_client> createState() => _pageMessages_clientState();
}

class _pageMessages_clientState extends State<pageMessages_client> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewMessages_client(), //canvas
    );
  }
}