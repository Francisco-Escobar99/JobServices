import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewProfile_client.dart';

class profilePage_client extends StatefulWidget {
  const profilePage_client({super.key});

  @override
  State<profilePage_client> createState() => _profilePage_clientState();
}

class _profilePage_clientState extends State<profilePage_client> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewProfile_client(), //canvas
    );
  }
}