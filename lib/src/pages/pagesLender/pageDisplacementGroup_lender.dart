import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewProfile_client.dart';
import 'package:from_end/src/widgets/viewsLender/viewDisplacementGroup_lender.dart';

class pageDisplacementGroup_lender extends StatefulWidget {
  const pageDisplacementGroup_lender({super.key});

  @override
  State<pageDisplacementGroup_lender> createState() => _pageDisplacementGroup_lenderState();
}

class _pageDisplacementGroup_lenderState extends State<pageDisplacementGroup_lender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewDisplacementGroup_lender(), //canvas
    );
  }
}