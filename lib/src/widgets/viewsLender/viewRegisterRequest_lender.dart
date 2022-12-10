import 'package:flutter/material.dart';
import 'package:from_end/src/baken/client_connection.dart';

// ignore: camel_case_types
class viewRegisterRequest_lender extends StatefulWidget {
  final int id;
  final String email;
  final String name;
  final String toke;
  const viewRegisterRequest_lender(
      {super.key,
      required this.id,
      required this.email,
      required this.name,
      required this.toke});
 
  @override
  State<viewRegisterRequest_lender> createState() =>
    _viewRegisterRequest_lenderState(id: id, email: email, name: name, toke: toke);
}

class _viewRegisterRequest_lenderState extends State<viewRegisterRequest_lender> {
  final int id;
  final String email;
  final String name;
  final String toke;
  _viewRegisterRequest_lenderState(
      {required this.id,
      required this.email,
      required this.name,
      required this.toke});
  @override
  Widget build(BuildContext context) {
    final materiales = TextEditingController();
    final precio = TextEditingController();
    final descpcion = TextEditingController();
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          Container(
            padding:
                const EdgeInsets.only(top: 50, bottom: 40, right: 30, left: 30),
            child: TextFormField(
              controller: materiales,
              decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Color(0xff06718c)),
                  hintText: 'Materiales',
                  prefixIcon: Icon(
                    Icons.assignment,
                    color: Color(0xff06718c),
                  )),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 30, left: 30, top: 40),
            child: TextFormField(
              controller: descpcion,
              decoration: const InputDecoration(
                hintStyle: TextStyle(color: Color(0xff06718c)),
                hintText: 'Descripcion',
                prefixIcon: Icon(
                  Icons.description,
                  color: Color(0xff06718c),
                ),
              ),
              //obscureText: true,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 30, left: 30, top: 40),
            child: TextFormField(
              controller: precio,
              decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Color(0xff06718c)),
                  hintText: 'Precio',
                  prefixIcon: Icon(
                    Icons.person_search,
                    color: Color(0xff06718c),
                  )),
              //obscureText: true,
            ),
          ),
          Container(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 40),
              child: ElevatedButton(
                onPressed: () {
                  // print( name);
                  // print( titulo.text);
                  // print( descpcion.text);
                  // print( cargo.text);
                  // print( id);
                  // print( comentario.text);
                  // print( direccion.text);
                  // addpubli(titulo.text, descpcion.text, cargo.text, id,
                  //     comentario.text, direccion.text, name);
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor:
                        MaterialStateProperty.all(const Color(0xff208097)),
                    side: MaterialStateProperty.all(const BorderSide(
                      color: Color(0xff056980),
                      width: 2,
                    )),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                child: const Text('Enviar cotización'),
              )),
        ],
      ),
    );
  }
}
