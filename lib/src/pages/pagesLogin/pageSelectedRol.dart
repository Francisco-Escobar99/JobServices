import 'package:flutter/material.dart';
import 'package:from_end/src/pages/pagesLogin/pagePassword.dart';
import 'package:from_end/src/widgets/viewsLogin/viewSelectRol.dart';

// ignore: use_key_in_widget_constructors
class pageSelectedRol extends StatelessWidget {
  final String password;
  final String email;
  final String name;
  final String categoria;

  const pageSelectedRol( {super.key, required this.password, required this.email, required this.name, required this.categoria});

  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      body: viewSelectedRol( password: password, email:email, name: name, categoria: categoria,), //canvas
    );
  }
}
