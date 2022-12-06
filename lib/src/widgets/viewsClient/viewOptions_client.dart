// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show AppBar, BottomNavigationBar, BottomNavigationBarItem, BottomNavigationBarType, BoxDecoration, BuildContext, Center, Color, Colors, Drawer, DrawerHeader, Expanded, Icon, Icons, Image, ListTile, ListView, MaterialPageRoute, Navigator, Row, Scaffold, State, StatefulWidget, Text, TextStyle, Widget;
import 'package:from_end/src/pages/pagesClient/pageChats_client.dart';
import 'package:from_end/src/pages/pagesClient/pageMembers_client.dart';
import 'package:from_end/src/pages/pagesClient/pageMenu_client.dart';
import 'package:from_end/src/pages/pagesClient/pageNotifications_client.dart';
import 'package:from_end/src/pages/pagesClient/pageProfile_client.dart';
import 'package:from_end/src/pages/pagesClient/pageRegisterRequest_client.dart';
import 'package:from_end/src/widgets/viewsClient/viewWelcome_client.dart';

// ignore: camel_case_types
class viewoptions_client extends StatefulWidget {
  const viewoptions_client({super.key});

  @override
  State<viewoptions_client> createState() => _main_viewState();
}

// ignore: camel_case_types
class _main_viewState extends State<viewoptions_client> {
  //int _index = 0;
  int currentIndex = 0;
  final screens = [
    menuPage_client(),
    chatsPage_client(),
    HeaderResquest_client(),
    notificationsPage_client(),
    profilePage_client()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
          //currentIndex: _index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff07708c),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          iconSize: 25,
          selectedFontSize: 15,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items:  const [
             BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/logo.png',),), label: "Menu"),
            BottomNavigationBarItem(
              icon: Icon(Icons.messenger_outline_sharp,), label: "Mensajes"),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: "Agregar"),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),label: "Notificaciones"),
            BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Perfil"),
          ]),
    );
  }
}