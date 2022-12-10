// // ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewOptions_client.dart';
import 'package:from_end/src/widgets/viewsLender/viewOptions_lender.dart';

class pageOption_lender extends StatelessWidget {
  final int id;
  final String email;
  final String name;
  final String toke;
 // final String categoria;
  const pageOption_lender({super.key,  required this.id, required this.email, required this.name,required this.toke});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: viewOptions_lender(id: id, name: name, toke: toke, email:email), //canvas
    );
  }
}
