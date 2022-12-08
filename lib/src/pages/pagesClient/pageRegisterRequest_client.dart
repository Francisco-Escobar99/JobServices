import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewRegisterRequest_client.dart';

// ignore: use_key_in_widget_constructors
class HeaderResquest_client extends StatefulWidget {
  final int id;
  final String email;
  final String name;
  final String toke;
  HeaderResquest_client({required this.toke, required this.id, required this.name, required this.email, });
  @override
  // ignore: no_logic_in_create_state
  State<HeaderResquest_client> createState() => _HeaderResquest_clientState(id: id, email: email, name: name, toke: toke);
}

class _HeaderResquest_clientState extends State<HeaderResquest_client> {
  final int id;
  final String email;
  final String name;
  final String toke;
  _HeaderResquest_clientState({required this.toke, required this.id, required this.name, required this.email, });
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
      body:  viewRegisterRequest_client(id: id, email: email, name: name, toke: toke), //canvas
    );
  }
}