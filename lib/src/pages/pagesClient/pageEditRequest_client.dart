import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewEditRequest_client.dart';
import 'package:from_end/src/widgets/viewsClient/viewRegisterRequest_client.dart';

// ignore: use_key_in_widget_constructors
class pageEditResquest_client extends StatefulWidget {
  final int id;
  final String dato;
  pageEditResquest_client({super.key, required this.id, required this.dato});
  @override
  // ignore: no_logic_in_create_state
  State<pageEditResquest_client> createState() => _pageEditResquest_clientState(id, dato);
}

class _pageEditResquest_clientState extends State<pageEditResquest_client> {
  final int id;
  final String dato;
  _pageEditResquest_clientState(this.id,this.dato);
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
          'EDITAR SOLICITUD',
        ),
        backgroundColor: const Color(0xff07708c),
      ),
      body:  viewEditRequest_client(id: id, dato: dato,), //canvas
    );
  }
}