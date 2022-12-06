import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewMembers_client.dart';
import 'package:from_end/src/widgets/viewsClient/viewMessages_client.dart';
//import 'package:flutter_application_1/widgets/view_messages.dart';

class membersPage_client extends StatefulWidget {
  const membersPage_client({super.key});

  @override
  State<membersPage_client> createState() => _membersPage_clientState();
}

class _membersPage_clientState extends State<membersPage_client> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: view_members_client(), //canvas
    );
  }
}