import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/pages/pagesLender/pageAceptRequests_lender.dart';
import 'package:from_end/src/pages/pagesClient/pageOptions_client.dart';
import 'package:from_end/src/widgets/viewsLender/viewAceptRequests_lender.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class viewRequests_lender extends StatefulWidget {
  viewRequests_lender({Key? key}) : super(key: key);

  @override
  State<viewRequests_lender> createState() => _viewRequests_lenderState();
}

class _viewRequests_lenderState extends State<viewRequests_lender> {
  late final Map data;
  List? usersData;
  getUser() async {
    http.Response response = await http.get(Uri.parse('http://192.168.0.9:4000/publicasion/verificar'));
    data = json.decode(response.body);
    setState(() {
      usersData = data['data'];
      print('AAAAAAAAQUUUUUIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII');
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
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color(0xff29859a),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 40),
          onPressed: () {
            Navigator.pop(context);
            // Navigator.push(context, MaterialPageRoute(
            //   builder: ((context) => const optionPage_client(email: '', id: 1, name: '', toke: '',))));
          },
        ),  
        title: const Text('COTIZACIONES', style: TextStyle(fontSize: 20)),
        centerTitle: true,
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
                    height: 140,
                    width: 365,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff29859a)),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 2),
                        Text('Cotización:'),
                        Text("Titulo: " "${usersData![index]["titulo"]}", style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold)),
                        Text("Cargo: " "${usersData![index]["cargo"]}", style: TextStyle(color: Color(0xff29859a))),
                        Text("Nombre: " "${usersData![index]["nombreClie"]}", style: TextStyle(color: Color(0xff29859a))),
                        Text("Dirección: " "${usersData![index]["direccion"]}", style: TextStyle(color: Color(0xff29859a))),
                        Text("Descripción: " "${usersData![index]["descripcion"]}", style: TextStyle(color: Color(0xff29859a))),
                        Text("Comentarios: " "${usersData![index]["comentarios"]}", style: TextStyle(color: Color(0xff29859a))),
                        // Container(
                        //   margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 30),
                        //   color:  const Color(0xff04738b),
                        //   height: 1,
                        // ),
                        // SizedBox(height: 10),
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