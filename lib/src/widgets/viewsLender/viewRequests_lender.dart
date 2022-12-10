import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/src/pages/pagesLender/pageAceptRequests_lender.dart';
import 'package:from_end/src/pages/pagesClient/pageOptions_client.dart';
import 'package:from_end/src/widgets/viewsLender/viewAceptRequests_lender.dart';

class viewRequests_lender extends StatefulWidget {
  viewRequests_lender({Key? key}) : super(key: key);

  @override
  State<viewRequests_lender> createState() => _viewRequests_lenderState();
}

class _viewRequests_lenderState extends State<viewRequests_lender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color(0xff29859a),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 40),
          onPressed: () {
            // Navigator.push(context, MaterialPageRoute(
            //   builder: ((context) => const optionPage_client(email: '', id: 1, name: '', toke: '',))));
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
                      builder: ((context) => viewAceptRequests_lender())));
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