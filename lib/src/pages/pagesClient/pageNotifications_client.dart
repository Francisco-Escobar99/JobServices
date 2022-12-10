import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewNotifications_client.dart';

class pageNotifications_client extends StatefulWidget {
  const pageNotifications_client({super.key});

  @override
  State<pageNotifications_client> createState() => _pageNotifications_clientState();
}

class _pageNotifications_clientState extends State<pageNotifications_client> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewNotifications_client(), //canvas
    );
  }
}