import 'package:flutter/material.dart';
import 'package:from_end/src/pages/pagesClient/pageMembers_client.dart';
import 'package:from_end/src/pages/pagesLender/pageEditRequest_lender.dart';
import 'package:from_end/src/pages/pagesLender/pageRegisterRequest_lender.dart';
//import 'package:from_end/src/pages/pagesLender/pageRequests.dart';
import 'package:from_end/src/widgets/viewsClient/viewMembers_client.dart';
import 'package:from_end/src/widgets/viewsLender/viewEditRequest_lender.dart';
import 'package:from_end/src/widgets/viewsLender/viewRequests_lender.dart';
import 'package:from_end/src/widgets/viewsLogin/viewHome.dart';
import 'package:from_end/src/widgets/viewsLender/viewRegisterRequest_lender.dart';
import 'package:from_end/src/widgets/viewsLender/viewOptions_lender.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class viewMenu_lender extends StatefulWidget {
    final int id;
  final String email;
  final String name;
  final String toke;
  const viewMenu_lender(
      {super.key,
      required this.id,
      required this.email,
      required this.name,
      required this.toke});

  @override
  // ignore: no_logic_in_create_state
  State<viewMenu_lender> createState() =>
      _viewMenu_lenderState(id: id, email: email, name: name, toke: toke);
}

class _viewMenu_lenderState extends State<viewMenu_lender> {
  late final Map data;
  List? usersData;

  final int id;
  final String email;
  final String name;
  final String toke;
  _viewMenu_lenderState(
      {required this.id,
      required this.email,
      required this.name,
      required this.toke});
  getUser() async {
    http.Response response = await http.get(Uri.parse('http://192.168.0.9:4000/publicasion/verificar'));
    data = json.decode(response.body);
    setState(() {
      usersData = data['data'];
      print(usersData);
    });
  }
  @override
  void initState() {
      Map? data;
      Null usersData = null;
    // TODO: implement initState
    super.initState();
    getUser();
  }
  @override
  Widget build(BuildContext context) {
    Size dato = MediaQuery.of(context).size;
    var space = dato.height / 2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff29859a),
        title: Row(
          children: [
            Text(' Prestador: '),
            Text(name),
            // Text(email)
          ],
        ),
        centerTitle: true,
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
                        height: 100,
                      ),
                    ),
                    Text(
                      email,
                      style: TextStyle(fontSize: 17, color: Color(0xffe4f2fb)),
                    ),
                    // Text(
                    //   email,
                    //   style: TextStyle(fontSize: 17, color: Color(0xffe4f2fb)),
                    // ),
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
                "Cotizaciones",
                style: TextStyle(fontSize: 17),
              ),
              textColor: const Color(0xffe4f2fb),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: ((context) => viewRequests_lender())));
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
                  builder: ((context) => const viewMembers_client())));
              },
            ),
            Container(
              height: space,
              alignment: Alignment.topLeft,
              color: const Color(0xff29859a),
              child: ListTile(
                tileColor: const Color.fromARGB(255, 0, 0, 0),
                selectedTileColor: const Color(0xf305718D),
                // ignore: prefer_const_constructors
                title: Text(
                  "Cerrar sesión",
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
      body: ListView.builder(
        itemCount: usersData == null ? 0 : usersData?.length,
        itemBuilder: (BuildContext context, index) => Card(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    alignment: Alignment.center,
                    height: 175,
                    width: 365,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff29859a)),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 2),
                        Text("Titulo: " "${usersData![index]["titulo"]}", style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold)),
                        Text("Cargo: " "${usersData![index]["cargo"]}", style: TextStyle(color: Color(0xff29859a))),
                        Text("Nombre: " "${usersData![index]["nombreClie"]}", style: TextStyle(color: Color(0xff29859a))),
                        Text("Dirección: " "${usersData![index]["direccion"]}", style: TextStyle(color: Color(0xff29859a))),
                        Text("Descripción: " "${usersData![index]["descripcion"]}", style: TextStyle(color: Color(0xff29859a))),
                        Text("Comentarios: " "${usersData![index]["comentarios"]}", style: TextStyle(color: Color(0xff29859a))),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 30),
                          color:  const Color(0xff04738b),
                          height: 1,
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (() {
                                // accion editar
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => pageRegisterRequest_lender(email: email, id: id, name: name, toke: toke,)));
                                //viewRegisterRequest_lender(toke: toke, id: id, name: name, email: email);
                              }),
                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                height: 30,
                                width: 55,
                                child: Text('Cotizar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10)),
                                decoration: const BoxDecoration(
                                  color: const Color(0xf305718D),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}