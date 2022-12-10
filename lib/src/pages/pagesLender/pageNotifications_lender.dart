import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewNotifications_client.dart';
import 'package:from_end/src/widgets/viewsLender/viewNotifications_lender.dart';

class pageNotifications_lender extends StatefulWidget {
  const pageNotifications_lender({super.key});

  @override
  State<pageNotifications_lender> createState() => _pageNotifications_lenderState();
}

class _pageNotifications_lenderState extends State<pageNotifications_lender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewNotifications_lender(), //canvas
    );
  }
}