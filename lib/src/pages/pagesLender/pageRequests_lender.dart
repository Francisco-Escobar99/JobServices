import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsLender/viewAceptRequests_lender.dart';
import 'package:from_end/src/widgets/viewsLender/viewRequests_lender.dart';

class pageRequests_lender extends StatefulWidget {
  const pageRequests_lender({super.key});

  @override
  State<pageRequests_lender> createState() => _pageRequests_lenderState();
}

class _pageRequests_lenderState extends State<pageRequests_lender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewRequests_lender(), //canvas
    );
  }
}