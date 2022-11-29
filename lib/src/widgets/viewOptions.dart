// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show AppBar, BottomNavigationBar, BottomNavigationBarItem, BottomNavigationBarType, BoxDecoration, BuildContext, Center, Color, Drawer, DrawerHeader, Expanded, Icon, Icons, Image, ListTile, ListView, MaterialPageRoute, Navigator, Row, Scaffold, State, StatefulWidget, Text, TextStyle, Widget;
import 'package:from_end/src/pages/pageChats.dart';
import 'package:from_end/src/pages/pageMembers.dart';
import 'package:from_end/src/widgets/viewWelcome.dart';

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
    Size dato = MediaQuery.of(context).size;
    var space = dato.height / 2;
  

    // ignore: avoid_print
    print(space);
    // ignore: prefer_const_literals_to_create_immutables, dead_code
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff29859a),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xff29859a),
        child: ListView(
          children: [
            Container(
              height: 270,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [Color(0xff127791), Color(0xff28849B)],
                stops: [0.5, 0.5],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
              )),
              child: DrawerHeader(
                child: Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/images/perfil2.png',
                        height: 110,
                      ),
                    ),

                    const Text(
                      "gaby gomez",
                      style: TextStyle(fontSize: 17, color: Color(0xffe4f2fb)),
                    ),
                    // ignore: prefer_const_constructors
                  ],
                ),
              ),
            ),
            ListTile(
              tileColor: const Color(0xff29859a),
              selectedTileColor: const Color(0xf305718D),
              leading: const Icon(
                Icons.home,
                color: Color(0xffe4f2fb),
              ),
              title: const Text(
                "Inicio",
                style: TextStyle(fontSize: 17),
              ),
              textColor: const Color(0xffe4f2fb),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              tileColor: const Color(0xff29859a),
              selectedTileColor: const Color(0xf305718D),
              leading: const Icon(
                Icons.soap_outlined,
                color: Color(0xffe4f2fb),
              ),
              title: const Text(
                "Solicitud",
                style: TextStyle(fontSize: 17),
              ),
              textColor: const Color(0xffe4f2fb),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              tileColor: const Color(0xff29859a),
              selectedTileColor: const Color(0xf305718D),
              leading: const Icon(
                Icons.military_tech_sharp,
                color: Color(0xffe4f2fb),
              ),
              // ignore: prefer_const_constructors
              title: Text(
                "Miembros",
                style: const TextStyle(fontSize: 17),
              ),
              textColor: const Color(0xffe4f2fb),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: ((context) => const membersPage())));
              },
            ),
            ListTile(
              tileColor: const Color(0xff29859a),
              selectedTileColor: const Color(0xf305718D),
              leading: const Icon(
                Icons.manage_accounts,
                color: Color(0xffe4f2fb),
              ),
              // ignore: prefer_const_constructors
              title: Text(
                "Configuraciones",
                style: const TextStyle(fontSize: 17),
              ),
              textColor: const Color(0xffe4f2fb),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Container(
              height: space,
              alignment: Alignment.bottomLeft,
              color: const Color(0xff29859a),
              child: ListTile(
                tileColor: const Color.fromARGB(255, 0, 0, 0),
                selectedTileColor: const Color(0xf305718D),
                // ignore: prefer_const_constructors
                title: Text(
                  "cerrar seccion",
                  textAlign: TextAlign.right,
                  style: const TextStyle(fontSize: 17),
                ),
                textColor: const Color(0xffe4f2fb),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ViewHome()));
                },
              ),
            )
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
          backgroundColor: const Color(0xff07708c),
          onTap: (index) => setState(() {
                //_index = index;
                switch(index){
                  case 0:
                    break;
                  case 1:
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => const chatsPage())));
                    break;
                  case 2:
                    //Navigator.push(context, MaterialPageRoute(builder: ((context) => const membersPage())));
                    break;
                  case 3: 
                    //Navigator.push(context, MaterialPageRoute(builder: ((context) => const membersPage())));
                    break;
                    //Navigator.push(context, MaterialPageRoute(builder: ((context) => const membersPage())));
                  case 4: break;
                }
              }),
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
