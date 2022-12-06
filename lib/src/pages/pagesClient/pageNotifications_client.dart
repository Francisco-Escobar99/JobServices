import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewsClient/viewNotifications_client.dart';

class notificationsPage_client extends StatefulWidget {
  const notificationsPage_client({super.key});

  @override
  State<notificationsPage_client> createState() => _notificationsPage_clientState();
}

class _notificationsPage_clientState extends State<notificationsPage_client> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewNotifications_client(), //canvas
    );
  }
}