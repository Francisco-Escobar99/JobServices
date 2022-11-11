// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:from_end/src/pages/pageLogin.dart';
import 'package:from_end/src/pages/pageRegister.dart';

class ViewHome extends StatelessWidget {
  const ViewHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Card(
            child: CustomPaint(
          painter: _BackgroundDesign(),
          child: ListView(
            children: [
              SizedBox(
                height: 350,
                child: Image.asset('assets/images/logo.png'),
              ),
              Container(
                padding: const EdgeInsets.only(
                  right: 65,
                  left: 65,
                  top: 80,
                ),
                child: ElevatedButton.icon(
                  label: const Text('Iniciar Sesion',
                      style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const loginPage()));
                  },
                  icon: const Icon(Icons.arrow_forward_ios),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(17)),
                      foregroundColor:
                          MaterialStateProperty.all(const Color(0xff208097)),
                      side: MaterialStateProperty.all(const BorderSide(
                        color: Color(0xff056980),
                        width: 2,
                      )),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  right: 65,
                  left: 65,
                  top: 40,
                ),
                child: ElevatedButton.icon(
                  label:
                      const Text('Registrarme', style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const registerPage()));
                  },
                  icon: const Icon(Icons.arrow_forward_ios),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(17)),
                      foregroundColor:
                          MaterialStateProperty.all(const Color(0xff208097)),
                      side: MaterialStateProperty.all(const BorderSide(
                        color: Color(0xff056980),
                        width: 2,
                      )),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                ),
              )
            ],
          ),
        )));
  }
}

class _BackgroundDesign extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    //propiedades
    paint.color = const Color(0xff04738b);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
    path.lineTo(0, size.height * 0.55);
    path.quadraticBezierTo(size.width * 0.24, size.height * 0.51,
        size.width / 2, size.height * 0.56);
    path.quadraticBezierTo(size.width / 1.4, size.height * 0.59,
        3 * (size.width / 3), size.height * 0.59);
    path.lineTo(size.width, size.height * 0.63);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
