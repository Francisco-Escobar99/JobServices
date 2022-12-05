import 'package:flutter/material.dart';
import 'package:from_end/src/pages/pageMenu.dart';
import 'package:from_end/src/pages/pageOptions.dart';
import 'package:from_end/src/widgets/viewChats.dart';
import 'package:from_end/src/widgets/viewOptions.dart';
import 'package:from_end/src/widgets/viewWelcome.dart';

class viewMessages extends StatefulWidget {
  viewMessages({Key? key}) : super(key: key);

  @override
  State<viewMessages> createState() => _viewMessagesState();
}

class _viewMessagesState extends State<viewMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color(0xff29859a),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 40),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => const optionPage())));
          },
        ),  
        title: const Text('Dulce Mendoza', style: TextStyle(fontSize: 20)),
        //centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
          children: [
            const SizedBox(height: 20),
            const Text('Hoy', style: TextStyle(color: Color(0xff29859a), fontSize: 25, fontWeight: FontWeight.bold)),
            Container(        //    left, top, right, bottom
              margin: EdgeInsets.fromLTRB(150, 20, 20, 10),
              height: 50,
              width: 230,
              //color: Color(0xff29859a),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(170, 35, 127, 148),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.done_all, color: Color(0xff29859a)),
                  Text('2:00', style: TextStyle(color: Colors.white, fontSize: 18)),
                  SizedBox(width: 12)
                ],
              ),
            ),
            Container(        //    left, top, right, bottom
              margin: EdgeInsets.fromLTRB(20, 10, 150, 10),
              height: 50,
              width: 230,
              //color: Color(0xff29859a),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xff29859a)),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.done_all, color: Color(0xff29859a)),
                  Text('2:00', style: TextStyle(color: Color(0xff29859a), fontSize: 18)),
                  SizedBox(width: 12)
                ],
              ),
            ),
            Container(        //    left, top, right, bottom
              margin: EdgeInsets.fromLTRB(150, 10, 20, 10),
              height: 50,
              width: 230,
              //color: Color(0xff29859a),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(170, 35, 127, 148),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.done_all, color: Color(0xff29859a)),
                  Text('2:00', style: TextStyle(color: Colors.white, fontSize: 18)),
                  SizedBox(width: 12)
                ],
              ),
            ),
            Container(        //    left, top, right, bottom
              margin: EdgeInsets.fromLTRB(20, 10, 150, 10),
              height: 50,
              width: 230,
              //color: Color(0xff29859a),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xff29859a)),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.done_all, color: Color(0xff29859a)),
                  Text('2:00', style: TextStyle(color: Color(0xff29859a), fontSize: 18)),
                  SizedBox(width: 12)
                ],
              ),
            ),
            Container(        //    left, top, right, bottom
              margin: EdgeInsets.fromLTRB(150, 10, 20, 10),
              height: 50,
              width: 230,
              //color: Color(0xff29859a),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(170, 35, 127, 148),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.done_all, color: Color(0xff29859a)),
                  Text('2:00', style: TextStyle(color: Colors.white, fontSize: 18)),
                  SizedBox(width: 12)
                ],
              ),
            ),
            Container(        //    left, top, right, bottom
              margin: EdgeInsets.fromLTRB(20, 10, 150, 10),
              height: 50,
              width: 230,
              //color: Color(0xff29859a),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xff29859a)),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.done_all, color: Color(0xff29859a)),
                  Text('2:00', style: TextStyle(color: Color(0xff29859a), fontSize: 18)),
                  SizedBox(width: 12)
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 80,
              width: 415,
              color: Color(0xff29859a),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  //SizedBox(width: 10),
                  Container(          //    left, top, right, bottom
                    margin: EdgeInsets.fromLTRB(25, 10, 15, 10),
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 227, 250, 255),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        //prefixIcon: const Icon(Icons.search, color: Colors.white,),
                        hintText: 'Mensaje...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color:Color(0xff29859a)),
                        )
                      ),
                    ),
                  ),
                  Container(
                    //height: 40,
                    //width: 40,
                    child: const Icon(Icons.send, color: Colors.white, size: 45),
                    //color: Colors.amber,
                  )
                ],
              ),
            )
          ],
        ),
        ),
      ),
    );
  }
}