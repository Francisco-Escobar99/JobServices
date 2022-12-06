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
                "Cotización",
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
              //alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(top: 50),
              color: const Color(0xff29859a),
              child: ListTile(
                tileColor: const Color.fromARGB(255, 0, 0, 0),
                selectedTileColor: const Color(0xf305718D),
                // ignore: prefer_const_constructors
                title: Text(
                  "cerrar sesión",
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
      body: Center(
        child: ListView(
          children: [
            //SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              height: 40,
              child: Text('Publicar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
              decoration: const BoxDecoration(
                color: const Color(0xf305718D),
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                ),
              ),
            ),
            SizedBox(height: 0),
            SizedBox(
              width: 350,
              height: 205,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(
                    color: Color(0xff29859a),
                    width: 2,
                  )
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: const [
                          Icon(Icons.account_circle, color: Color(0xff29859a), size: 50),
                          SizedBox(width: 15),
                          Text('Dulce Mendoza', style: TextStyle(color: Color(0xff29859a), fontSize: 20, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Container(
                      height: 110,
                      width: 370,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color:const Color(0xff29859a)
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        )
                      ),
                    ),
                  ],
                )
              )
            ),
            SizedBox(
              width: 350,
              height: 205,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(
                    color: Color(0xff29859a),
                    width: 2,
                  )
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: const [
                          Icon(Icons.account_circle, color: Color(0xff29859a), size: 50),
                          SizedBox(width: 15),
                          Text('Dulce Mendoza', style: TextStyle(color: Color(0xff29859a), fontSize: 20, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Container(
                      height: 110,
                      width: 370,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color:const Color(0xff29859a)
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        )
                      ),
                    ),
                  ],
                )
              )
            ),
            SizedBox(
              width: 350,
              height: 205,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(
                    color: Color(0xff29859a),
                    width: 2,
                  )
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: const [
                          Icon(Icons.account_circle, color: Color(0xff29859a), size: 50),
                          SizedBox(width: 15),
                          Text('Dulce Mendoza', style: TextStyle(color: Color(0xff29859a), fontSize: 20, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Container(
                      height: 110,
                      width: 370,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color:const Color(0xff29859a)
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        )
                      ),
                    ),
                  ],
                )
              )
            ),
          ],
        )
      ),
    );
  }
}