// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsLogin/viewHome.dart';

// ignore: camel_case_types
class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

// ignore: camel_case_types
class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(milliseconds: 1500),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ViewHome())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff127990),
      body: SafeArea(
        child: Column(children: <Widget>[
          const Spacer(),
          Center(
            child: FractionallySizedBox(
              widthFactor: .6,
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
          ),
          const CircularProgressIndicator(),
          const Spacer(),
        ]),
      ),
    );
  }
}
