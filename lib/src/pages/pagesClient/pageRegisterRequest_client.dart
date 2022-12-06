import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewRegisterRequest_client.dart';

// ignore: use_key_in_widget_constructors
class HeaderResquest_client extends StatefulWidget {
  @override
  State<HeaderResquest_client> createState() => _HeaderResquest_clientState();
}

class _HeaderResquest_clientState extends State<HeaderResquest_client> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 37, color: Color(0xff07708c)),
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text(
          'SOLICITUD',
        ),
        backgroundColor: const Color(0xff07708c),
      ),
      body: const viewRegisterRequest_client(), //canvas
    );
  }
}