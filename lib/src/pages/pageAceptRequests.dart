import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/viewAceptRequests.dart';

class aceptRequestsPage extends StatefulWidget {
  const aceptRequestsPage({super.key});

  @override
  State<aceptRequestsPage> createState() => _aceptRequestsPageState();
}

class _aceptRequestsPageState extends State<aceptRequestsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewAceptRequests(), //canvas
    );
  }
}