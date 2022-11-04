import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:from_end/src/pages/pageRegister.dart';
import 'package:from_end/src/pages/pageHome.dart';

class Viewregister extends StatelessWidget {
  const Viewregister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _BackgroundDesign(),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Padding(padding: EdgeInsets.symmetric(horizontal: 50)),
                IconButton(
                  icon: Icon(Icons.arrow_back_ios_new, size: 70),
                  color: Colors.white,
                  alignment: Alignment.topLeft,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Headerpage()));
                  },
                ),
                Image.asset(
                  'assets/images/logo.png',
                  height: 150,
                  alignment: Alignment.topRight,
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 25, bottom: 40, right: 30, left: 30),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Nombre completo',
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Correo electronico',
                    prefixIcon: Icon(Icons.email)),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 40),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Contraseña', prefixIcon: Icon(Icons.lock_reset)),
                obscureText: true,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 40),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Confirmar contraseña',
                    prefixIcon: Icon(Icons.lock_reset)),
                obscureText: true,
              ),
            ),
            Container(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 40),
                child: ElevatedButton(
                  child: Text('Registrarme'),
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor:
                          MaterialStateProperty.all(Color(0xff208097)),
                      side: MaterialStateProperty.all(const BorderSide(
                        color: Color(0xff056980),
                        width: 2,
                      )),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                )),
            Container(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
                child: ElevatedButton(
                  child: Text('Registrarme con Gmail'),
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor:
                          MaterialStateProperty.all(Color(0xff208097)),
                      side: MaterialStateProperty.all(
                          const BorderSide(color: Color(0xff056980), width: 2)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                ))
          ],
        ),
      ),
    );
  }
}

class _BackgroundDesign extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    //propiedades
    paint.color = Color(0xff04738b);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = new Path();

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
