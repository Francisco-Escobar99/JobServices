import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewProfile_client.dart';

class pageProfile_client extends StatefulWidget {
  const pageProfile_client({super.key});

  @override
  State<pageProfile_client> createState() => _pageProfile_clientState();
}

class _pageProfile_clientState extends State<pageProfile_client> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewProfile_client(), //canvas
    );
  }
}