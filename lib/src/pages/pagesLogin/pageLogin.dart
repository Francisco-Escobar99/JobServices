//ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsLogin/viewLogin.dart';

class pageLogin extends StatelessWidget {
  const pageLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: viewLogin(), //canvas
    );
  }
}
