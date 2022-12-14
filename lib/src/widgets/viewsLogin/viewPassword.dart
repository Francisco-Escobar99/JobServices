// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:from_end/src/pages/pagesLogin/pageLogin.dart';
import 'package:from_end/src/pages/pagesLogin/pageChangePassword.dart';
import 'package:from_end/src/widgets/viewsLogin/viewCPassword.dart';
import 'package:from_end/src/widgets/viewsLogin/viewLogin.dart';

class viewPassword extends StatelessWidget {
  const viewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _BackgroundPassword(),
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
                            builder: (context) => const viewLogin()));
                  },
                ),
                Image.asset(
                  'assets/images/logo.png',
                  height: 145,
                  alignment: Alignment.topRight,
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 70, bottom: 40, right: 30, left: 30),
              // ignore: prefer_const_constructors
              child: Text('¿Olvidaste tu contraseña?',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Color(0xff06708d))),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 0, bottom: 30, right: 30, left: 30),
              // ignore: prefer_const_constructors
              //Padding(padding: EdgeInsets.symmetric(horizontal: 50)),
              child: const Text(
                'Ingresa su correo electrico, te enviaremos las instrucciones para iniciar sesion',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17, color: Color(0xff569fb0)),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10, right: 30, left: 30),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Correo electronico',
                    prefixIcon: Icon(
                      Icons.email,
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 38,
                left: 38,
                top: 70,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const viewChangePassword()));
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
                child: const Text('Enviar',
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

class _BackgroundPassword extends CustomPainter {
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
