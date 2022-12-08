import 'package:flutter/material.dart';
import 'package:from_end/src/baken/client_connection.dart';

// ignore: camel_case_types
class viewRegisterRequest_client extends StatelessWidget {
  final int id;
  final String email;
  final String name;
  final String toke;
  viewRegisterRequest_client({
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
            //crossAxisAlignment: CrossAxisAlignment.start,
            /* children: [
              //Padding(padding: EdgeInsets.symmetric(horizontal: 50)),
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_new, size: 50),
                color: Colors.white,
                alignment: Alignment.topLeft,
                onPressed: () {},
              ),
              Image.asset(
                'assets/images/logo.png',
                height: 145,
                alignment: Alignment.topRight,
              )
            ],*/
          ),
          Container(
            padding:
                const EdgeInsets.only(top: 50, bottom: 40, right: 30, left: 30),
            child: TextFormField(
              controller: titulo,
              decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Color(0xff06718c)),
                  hintText: 'Nombre de la Solicitud',
                  prefixIcon: Icon(
                    Icons.assignment,
                    color: Color(0xff06718c),
                  )),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: TextFormField(
              controller: direccion,
              decoration: const InputDecoration(
                hintText: 'Direccion',
                hintStyle: TextStyle(color: Color(0xff06718c)),
                prefixIcon: Icon(
                  Icons.location_on,
                  color: Color(0xff06718c),
                ),
              ),
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
                  hintText: 'Nombre del prestador',
                  prefixIcon: Icon(
                    Icons.person_search,
                    color: Color(0xff06718c),
                  )),
              //obscureText: true,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 30, left: 30, top: 40),
            child: TextFormField(
              controller: comentario,
              decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Color(0xff06718c)),
                  hintText: 'Comentarios',
                  prefixIcon: Icon(
                    Icons.message,
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
