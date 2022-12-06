import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsLender/viewAceptRequests_lender.dart';
import 'package:from_end/src/widgets/viewsLender/viewRequests_lender.dart';

class requestsPage_lender extends StatefulWidget {
  const requestsPage_lender({super.key});

  @override
  State<requestsPage_lender> createState() => _requestsPage_lenderState();
}

class _requestsPage_lenderState extends State<requestsPage_lender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewRequests_lender(), //canvas
    );
  }
}