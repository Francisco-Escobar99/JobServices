import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewMembers.dart';
import 'package:from_end/src/widgets/viewMessages.dart';
//import 'package:flutter_application_1/widgets/view_messages.dart';

class membersPage extends StatefulWidget {
  const membersPage({super.key});

  @override
  State<membersPage> createState() => _membersPageState();
}

class _membersPageState extends State<membersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: view_members(), //canvas
    );
  }
}