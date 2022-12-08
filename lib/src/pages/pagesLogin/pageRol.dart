import 'package:flutter/material.dart';
import 'package:from_end/src/pages/pagesLogin/pagePassword.dart';
import 'package:from_end/src/widgets/viewsLogin/viewSelectRol.dart';

// ignore: use_key_in_widget_constructors
class HeadeRol extends StatelessWidget {
  final String password;
  final String email;
  final String name;

  const HeadeRol( {super.key, required this.password, required this.email, required this.name});
  
 

  @override
  Widget build(
    BuildContext context,
    
  ) {
    return Scaffold(
      
      body: Viewrol( password: password, email:email, name: name,), //canvas
    );
  }
}
