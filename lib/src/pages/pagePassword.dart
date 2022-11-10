// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewPassword.dart';

class passwordPage extends StatelessWidget {
  const passwordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Password_view(), //canvas
    );
  }
}