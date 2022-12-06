import 'package:flutter/material.dart';
import 'package:from_end/src/pages/pagesClient/pageMembers_client.dart';
import 'package:from_end/src/pages/pagesLender/pageRequests.dart';
import 'package:from_end/src/widgets/viewsClient/viewWelcome_client.dart';

class viewMenu_client extends StatefulWidget {
  viewMenu_client({Key? key}) : super(key: key);

  @override
  State<viewMenu_client> createState() => _viewMenu_clientState();
}

class _viewMenu_clientState extends State<viewMenu_client> {
  @override
  Widget build(BuildContext context) {
    Size dato = MediaQuery.of(context).size;
    var space = dato.height / 2;
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
                Navigator.push(context, MaterialPageRoute(
                  builder: ((context) => const requestsPage_lender())));
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
                  builder: ((context) => const membersPage_client())));
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
    );
  }
}