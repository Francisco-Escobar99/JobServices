import 'package:flutter/material.dart';
import 'package:from_end/src/baken/client_connection.dart';

// ignore: camel_case_types
class viewEditRequest_client extends StatelessWidget {
  final int id;
  final String dato;
  viewEditRequest_client({super.key, required this.id, required this.dato});

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
                  edCliente(dato, titulo.text, descpcion.text, cargo.text, id,
                      comentario.text, direccion.text, cargo.text);
                  //Navigator.pop(context);
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
                child: const Text('Guardar cambios'),
              )),
        ],
      ),
    );
  }
}
