import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewProfile_client.dart';
import 'package:from_end/src/widgets/viewsLender/viewDisplacementGroup_lender.dart';

class pageDisplacementGroup_lender extends StatefulWidget {
  final int id;
  final String email;
  final String name;
  final String toke;

  pageDisplacementGroup_lender({required this.toke, required this.id, required this.name, required this.email, });
  //const pageDisplacementGroup_lender({super.key});

  @override
  State<pageDisplacementGroup_lender> createState() => _pageDisplacementGroup_lenderState(id: id, email: email, name: name, toke: toke);
}

class _pageDisplacementGroup_lenderState extends State<pageDisplacementGroup_lender> {
  final int id;
  final String email;
  final String name;
  final String toke;
  _pageDisplacementGroup_lenderState({required this.toke, required this.id, required this.name, required this.email, });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewDisplacementGroup_lender(id: id, email: email, name: name, toke: toke), //canvas
    );
  }
}