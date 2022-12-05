import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewAceptRequests.dart';
import 'package:from_end/src/widgets/viewRequests.dart';

class requestsPage extends StatefulWidget {
  const requestsPage({super.key});

  @override
  State<requestsPage> createState() => _requestsPageState();
}

class _requestsPageState extends State<requestsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewRequests(), //canvas
    );
  }
}