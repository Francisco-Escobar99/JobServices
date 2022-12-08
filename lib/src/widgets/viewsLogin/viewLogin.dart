// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:from_end/src/pages/pagesClient/pageOptions_client.dart';
import 'package:from_end/src/pages/pagesClient/pageHome_client.dart';
import 'package:from_end/src/pages/pagesLogin/pagePassword.dart';
import 'package:from_end/src/baken/client_connection.dart';

class view_login extends StatelessWidget {
  const view_login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    final mycontrasella = TextEditingController();
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _BackgroundLogin(),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Padding(padding: EdgeInsets.symmetric(horizontal: 50)),
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new, size: 50),
                  color: Colors.white,
                  alignment: Alignment.topLeft,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Headerpage_client()));
                  },
                ),
                Image.asset(
                  'assets/images/logo.png',
                  height: 145,
                  alignment: Alignment.topRight,
                )
              ],
            ),
            /* Container(
              alignment: Alignment(0, 2),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff04738b),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10)),
                child: const Icon(Icons.arrow_back_ios, size: 80),
                onPressed: () {},
              ),
            ),*/
            Container(
              padding: const EdgeInsets.only(
                  top: 70, bottom: 40, right: 30, left: 30),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Correo Electronico',
                    prefixIcon: Icon(Icons.email)),
                controller: myController,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Contraseña', prefixIcon: Icon(Icons.lock_reset)),
                controller: mycontrasella,
                obscureText: true,
              ),
            ),
            TextButton(
              style: const ButtonStyle(alignment: Alignment(0.7, 0.7)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const passwordPage()));
              },
              child: const Text(
                "¿Olvidaste tu Contraseña?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xff4495a6)),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 38,
                left: 38,
                top: 50,
              ),
              child: ElevatedButton(
                onPressed: () async {
                  Cliente dato = await conexlogit(myController.text, mycontrasella.text);
                
                  if(dato.status=="correcto"){
                     var name2 =dato.name;
                     // ignore: use_build_context_synchronously
                     Navigator.push( context,MaterialPageRoute(builder: (context) =>  optionPage_client(name:dato.name,email:dato.email,id:dato.id, toke: dato.token,)));
                  } else{
                        // ignore: use_build_context_synchronously
                        showDialog(
                          context: context,
                          builder: (context) => const AlertDialog(
                            title: Text("contrasella incorrecta o email"),
                          ));

                  }

                 
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(15)),
                    foregroundColor:
                        MaterialStateProperty.all(const Color(0xff208097)),
                    side: MaterialStateProperty.all(const BorderSide(
                      color: Color(0xff056980),
                      width: 2,
                    )),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21)))),
                child: const Text('Iniciar Sesion',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 38,
                left: 38,
                top: 40,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(15)),
                    foregroundColor:
                        MaterialStateProperty.all(const Color(0xff208097)),
                    side: MaterialStateProperty.all(const BorderSide(
                      color: Color(0xff056980),
                      width: 2,
                    )),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21)))),
                child: const Text('Iniciar Sesion con Gmail',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _BackgroundLogin extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    //propiedades
    paint.color = const Color(0xff04738b);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
    path.lineTo(0, size.height * 0.25); // 30
    path.quadraticBezierTo(
        size.width * 0.23,
        size.height * 0.19, // 0.25 - 0.35
        size.width * 0.5,
        size.height * 0.25); // 30
    path.quadraticBezierTo(
        size.width * 0.75,
        size.height * 0.30, // 0.75 - 0.22
        size.width,
        size.height * 0.27); // 0.25
    path.lineTo(size.width, 0); // 0

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
