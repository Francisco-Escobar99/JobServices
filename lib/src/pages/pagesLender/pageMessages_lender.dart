import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewMessages_client.dart';
import 'package:from_end/src/widgets/viewsLender/viewMessages_lender.dart';
//import 'package:flutter_application_1/widgets/view_messages.dart';

class pageMessages_lender extends StatefulWidget {
  const pageMessages_lender({super.key});

  @override
  State<pageMessages_lender> createState() => _pageMessages_lenderState();
}

class _pageMessages_lenderState extends State<pageMessages_lender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewMessages_lender(), //canvas
    );
  }
}