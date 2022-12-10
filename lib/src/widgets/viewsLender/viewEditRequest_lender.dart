import 'package:flutter/material.dart';
import 'package:from_end/src/baken/client_connection.dart';

// ignore: camel_case_types
class viewEditRequest_lender extends StatelessWidget {
  final int id;
  final String email;
  final String name;
  final String toke;
  viewEditRequest_lender({
    required this.toke,
    required this.id,
    required this.name,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    final titulo = TextEditingController();
    final direccion = TextEditingController();
    final descpcion = TextEditingController();
    final cargo = TextEditingController();
    final comentario = TextEditingController();
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
              controller: titulo,
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
              controller: cargo,
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
                  print( name);
                  print( titulo.text);
                  print( descpcion.text);
                  print( cargo.text);
                  print( id);
                  print( comentario.text);
                  print( direccion.text);
                  addpubli(titulo.text, descpcion.text, cargo.text, id,
                      comentario.text, direccion.text, name);
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
                child: const Text('Enviar Solicitud'),
              )),
        ],
      ),
    );
  }
}
