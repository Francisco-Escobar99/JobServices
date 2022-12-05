import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class viewNotifications extends StatefulWidget {
  viewNotifications({Key? key}) : super(key: key);

  @override
  State<viewNotifications> createState() => _viewNotificationsState();
}

class _viewNotificationsState extends State<viewNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //toolbarHeight: 80,
        backgroundColor: const Color(0xff29859a),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xff29859a)),
          onPressed: () {
                
          },
        ),  
        title: const Text('N O T I F I C A C I O N E S', style: TextStyle(fontSize: 20)),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          //padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          children: [
            Container(
              color: Color.fromARGB(172, 41, 133, 154),
              height: 30,
              width: 300,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 190, vertical: 5),
                child: const Text('Hoy', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              //child: const Text('Hoy', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            const SizedBox(
              width: 300,
              height: 100,
              child: Card(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        //borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Color(0xff29859a),
                          width: 1,
                        )
                      ),
                      child: ListTile(
                        leading: Icon(Icons.account_circle, color: Color(0xff29859a), size: 70),
                        title: Text('Notificación', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold)),
                        subtitle: Text('Hola, ¿Cómo estás?, tienes una notificación.', style: TextStyle(color: Color(0xff29859a)),),
                      ),
                    )
              ),
            ),
            const SizedBox(
              width: 300,
              height: 100,
              child: Card(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        //borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Color(0xff29859a),
                          width: 1,
                        )
                      ),
                      child: ListTile(
                        leading: Icon(Icons.account_circle, color: Color(0xff29859a), size: 70),
                        title: Text('Notificación', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold)),
                        subtitle: Text('Hola, ¿Cómo estás?, tienes una notificación.', style: TextStyle(color: Color(0xff29859a))),
                      ),
                    )
              ),
            ),
            const SizedBox(
              width: 300,
              height: 100,
              child: Card(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        //borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Color(0xff29859a),
                          width: 1,
                        )
                      ),
                      child: ListTile(
                        leading: Icon(Icons.account_circle, color: Color(0xff29859a), size: 70),
                        title: Text('Notificación', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold)),
                        subtitle: Text('Hola, ¿Cómo estás?, tienes una notificación.', style: TextStyle(color: Color(0xff29859a))),
                      ),
                    )
              ),
            ),
          ],
        ),
      ),
    );
  }
}