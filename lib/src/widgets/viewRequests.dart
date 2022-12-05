import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/pages/pageAceptRequests.dart';
import 'package:from_end/src/pages/pageOptions.dart';

class viewRequests extends StatefulWidget {
  viewRequests({Key? key}) : super(key: key);

  @override
  State<viewRequests> createState() => _viewRequestsState();
}

class _viewRequestsState extends State<viewRequests> {
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
              builder: ((context) => const optionPage())));
          },
        ),  
        title: const Text('S O L I C I T U D E S', style: TextStyle(fontSize: 20)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            SizedBox(
              //width: double.infinity,
              width: 380,
              height: 90,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(
                    color: Color(0xff29859a),
                    width: 1,
                  )
                ),
                child: ListTile(
                  minVerticalPadding: 15,
                  leading: const Icon(Icons.home_repair_service, color: Color(0xff29859a), size: 50),
                  title: const Text('REPARACION DE FOCO', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('Francisco Escobar', style: TextStyle(color: Color(0xff29859a))),
                      Row(
                        children: const [
                          //Icon(Icons.location_on),
                          Text('29-Noviembre-2022', style: TextStyle(color: Color(0xff29859a)),)
                        ],
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: ((context) => const aceptRequestsPage())));
                  },
                ),
              )
            ),
            SizedBox(
              //width: double.infinity,
              width: 380,
              height: 90,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(
                    color: Color(0xff29859a),
                    width: 1,
                  )
                ),
                child: ListTile(
                  minVerticalPadding: 15,
                  leading: const Icon(Icons.home_repair_service, color: Color(0xff29859a), size: 50),
                  title: const Text('REPARACION DE FOCO', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('Francisco Escobar', style: TextStyle(color: Color(0xff29859a))),
                      Row(
                        children: const [
                          //Icon(Icons.location_on),
                          Text('29-Noviembre-2022', style: TextStyle(color: Color(0xff29859a)),)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ),
            SizedBox(
              //width: double.infinity,
              width: 380,
              height: 90,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(
                    color: Color(0xff29859a),
                    width: 1,
                  )
                ),
                child: ListTile(
                  minVerticalPadding: 15,
                  leading: const Icon(Icons.home_repair_service, color: Color(0xff29859a), size: 50),
                  title: const Text('REPARACION DE FOCO', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('Francisco Escobar', style: TextStyle(color: Color(0xff29859a))),
                      Row(
                        children: const [
                          //Icon(Icons.location_on),
                          Text('29-Noviembre-2022', style: TextStyle(color: Color(0xff29859a)),)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ),
            SizedBox(
              //width: double.infinity,
              width: 380,
              height: 90,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: const BorderSide(
                    color: Color(0xff29859a),
                    width: 1,
                  )
                ),
                child: ListTile(
                  minVerticalPadding: 15,
                  leading: const Icon(Icons.home_repair_service, color: Color(0xff29859a), size: 50),
                  title: const Text('REPARACION DE FOCO', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text('Francisco Escobar', style: TextStyle(color: Color(0xff29859a))),
                      Row(
                        children: const [
                          //Icon(Icons.location_on),
                          Text('29-Noviembre-2022', style: TextStyle(color: Color(0xff29859a)),)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}