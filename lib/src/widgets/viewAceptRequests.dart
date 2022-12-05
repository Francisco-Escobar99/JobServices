import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/pages/pageRequests.dart';

class viewAceptRequests extends StatefulWidget {
  viewAceptRequests({Key? key}) : super(key: key);

  @override
  State<viewAceptRequests> createState() => _viewAceptRequestsState();
}

class _viewAceptRequestsState extends State<viewAceptRequests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color(0xff29859a),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 40),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: ((context) => const requestsPage())));
          },
        ),  
        //title: const Text('S O L I C I T U D E S', style: TextStyle(fontSize: 20)),
        //centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 580,
              width: 410,
              color: Colors.white,
              child: Container(
                margin: EdgeInsets.only(top: 450),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap:() {
                        // rechazar
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color:const Color(0xff04738b),
                            width: 1
                          ),
                        ),
                        child: const Text('RECHAZAR', style: TextStyle(color: Color(0xff04738b)),),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap:() {
                        // rechazar
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff04738b),
                          border: Border.all(color: const Color(0xff04738b))
                        ),
                        child: const Text('ACEPTAR', style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              )
            ),
            Container(
              //alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 90, left: 15, right: 15, bottom: 100),
              height: 500,
              width: 380,
              //color: Colors.white,
              decoration: BoxDecoration(
                border: Border.all(
                  color:const Color(0xff04738b),
                  width: 1
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10)
                )
              ),
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 90),
                    height: 70,
                    //color: Colors.amber,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff04738b),
                        width: 1
                      )
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            //color: Colors.red,
                            border: Border.all(
                              color:const Color(0xff04738b),
                              width: 1
                            )
                          ),
                          child: const Icon(Icons.person, size: 50, color:Color(0xff04738b)),
                        ),
                        const SizedBox(width: 30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text('Francisco Escobar', style: TextStyle(color: Color(0xff04738b), fontSize: 20),),
                            Row(
                              children: const [
                                Icon(Icons.location_on, color: Colors.grey,),
                                Text('Tuxtla Gutiérrez, Chiapas', style: TextStyle(color: Colors.grey),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    height: 150,
                    //color: Colors.amber,
                    child: ListView(
                      children: [
                        Title(
                          color: Color(0xff04738b), 
                          child: const Text('REPARACIÓN DE FOCO', style: TextStyle(color: Color(0xff04738b), fontSize: 18, fontWeight: FontWeight.bold))
                        ),
                        const SizedBox(height: 10),
                        const Text('Dirección:', style: TextStyle(color: Color(0xff04738b))),
                        const SizedBox(height: 5),
                        const Text('Descripción:', style: TextStyle(color: Color(0xff04738b))),
                        const SizedBox(height: 5),
                        const Text('Comentarios:', style: TextStyle(color: Color(0xff04738b))),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, left: 130),
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                    color:const Color(0xff04738b),
                    width: 1
                )
              ),
              child: const Icon(Icons.home_repair_service, size: 150, color: Color(0xff04738b)),
            )
          ],
        ),
      ),
    );
  }
}