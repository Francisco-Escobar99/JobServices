import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewMembers_client.dart';
import 'package:from_end/src/widgets/viewsClient/viewMessages_client.dart';
//import 'package:flutter_application_1/widgets/view_messages.dart';

class pageMembers_client extends StatefulWidget {
  const pageMembers_client({super.key});

  @override
  State<pageMembers_client> createState() => _pageMembers_clientState();
}

class _pageMembers_clientState extends State<pageMembers_client> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewMembers_client(), //canvas
    );
  }
}