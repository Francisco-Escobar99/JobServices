import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widgets/viewsLender/viewAceptRequests_lender.dart';

class aceptRequestsPage_lender extends StatefulWidget {
  const aceptRequestsPage_lender({super.key});

  @override
  State<aceptRequestsPage_lender> createState() => _aceptRequestsPage_lenderState();
}

class _aceptRequestsPage_lenderState extends State<aceptRequestsPage_lender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewAceptRequests_lender(), //canvas
    );
  }
}