// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewOptions_client.dart';

class optionPage_client extends StatelessWidget {
  final int id;
  final String email;
  final String name;
  final String toke;
  const optionPage_client({super.key,  required this.id, required this.email, required this.name,required this.toke});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: viewoptions_client(id: id, name: name, toke: toke, email:email), //canvas
    );
  }
}
