import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewRequests_client.dart';
import 'package:from_end/src/widgets/viewsLender/viewAceptRequests_lender.dart';
import 'package:from_end/src/widgets/viewsLender/viewRequests_lender.dart';

class pageRequests_client extends StatefulWidget {
  const pageRequests_client({super.key});

  @override
  State<pageRequests_client> createState() => _pageRequests_clientState();
}

class _pageRequests_clientState extends State<pageRequests_client> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewRequests_client(), //canvas
    );
  }
}