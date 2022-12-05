import 'package:flutter/material.dart';

class viewAdd extends StatefulWidget {
  viewAdd({Key? key}) : super(key: key);

  @override
  State<viewAdd> createState() => _viewAddState();
}

class _viewAddState extends State<viewAdd> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('AGREGAR'),
      ),
    );
  }
}