import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widgets/viewsLender/viewAceptRequests_lender.dart';

class pageAceptRequests_lender extends StatefulWidget {
  const pageAceptRequests_lender({super.key});

  @override
  State<pageAceptRequests_lender> createState() => _pageAceptRequests_lenderState();
}

class _pageAceptRequests_lenderState extends State<pageAceptRequests_lender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewAceptRequests_lender(), //canvas
    );
  }
}