import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewRegisterRequest_client.dart';
import 'package:from_end/src/widgets/viewsLender/viewRegisterRequest_lender.dart';
// ignore: use_key_in_widget_constructors
class pageRegisterRequest_lender extends StatefulWidget {
  final int id;
  final String email;
  final String name;
  final String toke;
  pageRegisterRequest_lender({required this.toke, required this.id, required this.name, required this.email, });
  @override
  // ignore: no_logic_in_create_state
  State<pageRegisterRequest_lender> createState() => _pageRegisterRequest_lenderState(id: id, email: email, name: name, toke: toke);
}

class _pageRegisterRequest_lenderState extends State<pageRegisterRequest_lender> {
  final int id;
  final String email;
  final String name;
  final String toke;
  _pageRegisterRequest_lenderState({required this.toke, required this.id, required this.name, required this.email, });
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
          'COTIZACION',
        ),
        backgroundColor: const Color(0xff07708c),
      ),
      body: viewRegisterRequest_lender(id: id, name: name, toke: toke, email:email), //canvas
    );
  }
}