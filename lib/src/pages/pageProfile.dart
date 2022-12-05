import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewProfile.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewProfile(), //canvas
    );
  }
}