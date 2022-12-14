import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsLogin/viewHome.dart';
import 'package:from_end/src/widgets/viewsLender/viewDisplacementGroup_lender.dart';
import 'package:from_end/src/widgets/viewsLender/viewProfile_lender.dart';
import 'package:from_end/src/widgets/viewsLogin/ViewSplachs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData( 
        primarySwatch: Colors.blue,
      ),
      home: const splashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
