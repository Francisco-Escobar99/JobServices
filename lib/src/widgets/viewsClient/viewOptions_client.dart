// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show
        BottomNavigationBar,
        BottomNavigationBarItem,
        BottomNavigationBarType,
        BuildContext,
        Color,
        Colors,
        Icon,
        Icons,
        Scaffold,
        State,
        StatefulWidget,
        Widget;
import 'package:from_end/src/pages/pagesClient/pageChats_client.dart';
import 'package:from_end/src/pages/pagesClient/pageMenu_client.dart';
import 'package:from_end/src/pages/pagesClient/pageNotifications_client.dart';
import 'package:from_end/src/pages/pagesClient/pageProfile_client.dart';
import 'package:from_end/src/pages/pagesClient/pageRegisterRequest_client.dart';
import 'package:from_end/src/widgets/viewsClient/viewChats_client.dart';
import 'package:from_end/src/widgets/viewsClient/viewMenu_client.dart';
import 'package:from_end/src/widgets/viewsClient/viewNotifications_client.dart';
import 'package:from_end/src/widgets/viewsClient/viewProfile_client.dart';
import 'package:from_end/src/widgets/viewsClient/viewRegisterRequest_client.dart';

// ignore: camel_case_types
class viewOptions_client extends StatefulWidget {
  final int id;
  final String email;
  final String name;
  final String toke;
  viewOptions_client({
    super.key,
    required this.id,
    required this.email,
    required this.name,
    required this.toke,
  });

  @override
  // ignore: no_logic_in_create_state
  State<viewOptions_client> createState() =>
      // ignore: no_logic_in_create_state
      _main_viewState(id: id, email: email, name: name, toke: toke);
}

// ignore: camel_case_types
class _main_viewState extends State<viewOptions_client> {
  final int id;
  final String email;
  final String name;
  final String toke;
  _main_viewState({required this.toke, required this.id, required this.name, required this.email, });
  //int _index = 0;
  int currentIndex = 0;
 

  @override
  Widget build(BuildContext context) {
    final screens = [
    pageMenu_client(email: email, id: id, name: name, toke: toke,),
    pageChats_client(),
    pageRegisterRequest_client(email: email, id: id, name: name, toke: toke,),
    pageNotifications_client(),
    pageProfile_client(email: email, id: id, name: name, toke: toke,)
  ];
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
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/logo.png',
                  ),
                ),
                label: "Menu"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.messenger_outline_sharp,
                ),
                label: "Mensajes"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: "Agregar"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined),
                label: "Notificaciones"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
          ]),
    );
  }
}
