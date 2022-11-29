// VISTA MENSAJES ----------------------------------
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/pages/pageMessages.dart';
import 'package:from_end/src/widgets/viewOptions.dart';

int _index = 0;

// ignore: camel_case_types
class viewChats extends StatefulWidget {
  const viewChats({Key? key}) : super(key: key);

  @override
  State<viewChats> createState() => _viewChatsState();
}

// ignore: camel_case_types
class _viewChatsState extends State<viewChats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff29859a),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => const viewoptions())));
          },
        ),  
        title: const Text('M E N S A J E S', style: TextStyle(fontSize: 20)),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
          children: [
            Row(
              children: [
                Container(                //    left, top, right, bottom
                  margin: const EdgeInsets.fromLTRB(20, 10, 10, 8),
                  height: 47,
                  width: 290,
                  //color: const Color.fromARGB(100, 41, 133, 154),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(64, 41, 133, 154),
                  ),
                  child: TextField(
                    //controller: controller,
                    decoration: InputDecoration(
                      hintTextDirection: TextDirection.ltr,
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Buscar mensaje',
                      hintStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color:Color(0xff29859a)),
                      )
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 47,
                  width: 60,
                  //color: Color(0xff29859a),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff29859a),
                  ),
                  child: const Icon(Icons.edit_note, size: 40, color: Colors.white,),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: ((context) => const messagesPage())));
              },
              child: SizedBox(
              width: 380,
              height: 90,
              child: Card(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(
                          color: Color(0xff29859a),
                          width: 2,
                        )
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.account_circle, color: Color(0xff29859a), size: 50),
                        title: const Text('Dulce Mendoza', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold)),
                        subtitle: const Text('Hola, ¿Cómo estás?'),
                        trailing: Column(
                          children: const [
                            Icon(Icons.done_all, color: Color(0xff29859a), size: 25),
                            Text('12:00', style: TextStyle(color: Color(0xff29859a), fontSize:  20),),
                          ],
                        ),
                      ),
                    )
              ),
            ),
            ),
            SizedBox(
              width: 380,
              height: 90,
              child: Card(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(
                          color: Color(0xff29859a),
                          width: 2,
                        )
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.account_circle, color: Color(0xff29859a), size: 50),
                        title: const Text('Dulce Mendoza', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold)),
                        subtitle: const Text('Hola, ¿Cómo estás?'),
                        trailing: Column(
                          children: const [
                            Icon(Icons.done_all, color: Color(0xff29859a), size: 25),
                            Text('12:00', style: TextStyle(color: Color(0xff29859a), fontSize:  20),),
                          ],
                        ),
                      ),
                    )
              ),
            ),
            SizedBox(
              width: 380,
              height: 90,
              child: Card(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(
                          color: Color(0xff29859a),
                          width: 2,
                        )
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.account_circle, color: Color(0xff29859a), size: 50),
                        title: const Text('Dulce Mendoza', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold)),
                        subtitle: const Text('Hola, ¿Cómo estás?'),
                        trailing: Column(
                          children: const [
                            Icon(Icons.done_all, color: Color(0xff29859a), size: 25),
                            Text('12:00', style: TextStyle(color: Color(0xff29859a), fontSize:  20),),
                          ],
                        ),
                      ),
                    )
              ),
            ),
            SizedBox(
              width: 380,
              height: 90,
              child: Card(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(
                          color: Color(0xff29859a),
                          width: 2,
                        )
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.account_circle, color: Color(0xff29859a), size: 50),
                        title: const Text('Dulce Mendoza', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold)),
                        subtitle: const Text('Hola, ¿Cómo estás?'),
                        trailing: Column(
                          children: const [
                            Icon(Icons.done_all, color: Color(0xff29859a), size: 25),
                            Text('12:00', style: TextStyle(color: Color(0xff29859a), fontSize:  20),),
                          ],
                        ),
                      ),
                    )
              ),
            )
          ],
        ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff07708c),
          onTap: ((value) => setState(() {
            _index = value;
          })),
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