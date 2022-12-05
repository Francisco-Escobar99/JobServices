import 'package:flutter/material.dart';
import 'package:from_end/src/widgets/viewNotifications.dart';

class notificationsPage extends StatefulWidget {
  const notificationsPage({super.key});

  @override
  State<notificationsPage> createState() => _notificationsPageState();
}

class _notificationsPageState extends State<notificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewNotifications(), //canvas
    );
  }
}