import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewProfile_client.dart';

class pageProfile_client extends StatefulWidget {
  final int id;
  final String email;
  final String name;
  final String toke;
  pageProfile_client({required this.toke, required this.id, required this.name, required this.email, });
  //const pageProfile_client({super.key});

  @override
  State<pageProfile_client> createState() => _pageProfile_clientState(id: id, email: email, name: name, toke: toke);
}

class _pageProfile_clientState extends State<pageProfile_client> {
  final int id;
  final String email;
  final String name;
  final String toke;
  _pageProfile_clientState({required this.toke, required this.id, required this.name, required this.email, });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewProfile_client(id: id, email: email, name: name, toke: toke), //canvas
    );
  }
}