import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewRegisterRequest_client.dart';
import 'package:from_end/src/widgets/viewsLender/viewRegisterRequest_lender.dart';
// ignore: use_key_in_widget_constructors
class pageRegisterRequest_lender extends StatefulWidget {
  final String idpublicasion;
  final String idcliente;
  final int idprestador;
  pageRegisterRequest_lender({required this.idpublicasion, required this.idcliente, required this.idprestador});
  @override
  // ignore: no_logic_in_create_state
  State<pageRegisterRequest_lender> createState() => _pageRegisterRequest_lenderState(idpublicasion: idpublicasion, idcliente: idcliente, idprestador: idprestador);
}

class _pageRegisterRequest_lenderState extends State<pageRegisterRequest_lender> {
  final String idpublicasion;
  final String idcliente;
  final int idprestador;
  _pageRegisterRequest_lenderState({required this.idpublicasion, required this.idcliente, required this.idprestador});
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
      body: viewRegisterRequest_lender(idpublicasion: idpublicasion, idcliente: idcliente, idprestador: idprestador), //canvas
    );
  }
}