// ignore_for_file: file_names
import 'package:flutter/material.dart'
    show
        AppBar,
        BottomNavigationBar,
        BottomNavigationBarItem,
        BottomNavigationBarType,
        BoxDecoration,
        BuildContext,
        Center,
        Color,
        Column,
        Drawer,
        DrawerHeader,
        EdgeInsets,
        Expanded,
        Icon,
        Icons,
        Image,
        ListTile,
        ListView,
        Scaffold,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        Widget;

// ignore: camel_case_types
class viewoptions extends StatefulWidget {
  const viewoptions({super.key});

  @override
  State<viewoptions> createState() => _main_viewState();
}

// ignore: camel_case_types
class _main_viewState extends State<viewoptions> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_literals_to_create_immutables, dead_code
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xf305718D),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xf305718D),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Color(0xf305718D)),
              child: Column(
                children: [
                  /*Expanded(
                    child: Image.asset('assets/images/perfil.png'),
                  ),*/
                  const Text("gaby gomez"),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
            ListTile(
              tileColor: const Color(0xf305718D),
              selectedTileColor: const Color(0xf305718D),
              leading: Icon(Icons.home),
              title: Text("Inicion"),
              onTap: () {},
            ),
            ListTile(
              tileColor: const Color(0xf305718D),
              selectedTileColor: const Color(0xf305718D),
              leading: Icon(Icons.soap_outlined),
              title: Text("Solicitud"),
              onTap: () {},
            ),
            ListTile(
              tileColor: const Color(0xf305718D),
              selectedTileColor: const Color(0xf305718D),
              leading: Icon(Icons.military_tech_sharp),
              title: Text("Miembros"),
              onTap: () {},
            ),
            ListTile(
              tileColor: const Color(0xf305718D),
              selectedTileColor: const Color(0xf305718D),
              leading: Icon(Icons.manage_accounts),
              title: Text("Configuraciones"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("hola"),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xf305718D),
          onTap: (index) => setState(() {
                _index = index;
              }),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.messenger_outline_sharp), label: "mesaguer"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: "add"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined),
                label: "notificasion"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "datos"),
          ]),
    );
  }
}
