import 'package:flutter/material.dart';
import 'package:from_end/src/baken/client_connection.dart';
import 'package:from_end/src/pages/pagesLogin/pageLogin.dart';
import 'package:from_end/src/widgets/viewsLogin/viewLogin.dart';

class viewSelectedRol extends StatelessWidget {
  final String password;
  final String email;
  final String name;
  final String categoria;
  const viewSelectedRol(
      {super.key,
      required this.password,
      required this.email,
      required this.categoria,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _BackgroundFormFoto(),
        child: ListView(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 99,
              alignment: const Alignment(0.9, 0.2),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 58, bottom: 40, right: 30, left: 30),
              // ignore: prefer_const_constructors
              child: Text('Escoge Tu Rol:',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xffe5f3fb))),
            ),
            Container(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 20),
                child: ElevatedButton(
                  // ignore: prefer_const_constructors
                  // ignore: sort_child_properties_last
                  child: const Text('Prestatario',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    addcliente(name, email, password);
                    Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const viewLogin()));
                    // vistas prestatario (cliente)
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff07708c)),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(13)),
                      foregroundColor:
                          MaterialStateProperty.all(const Color(0xffe5f3fb)),
                      side: MaterialStateProperty.all(const BorderSide(
                        color: Color(0xffe5f3fb),
                        width: 1.5,
                      )),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ))),
                )),
            Container(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 50),
                child: ElevatedButton(
                  // ignore: prefer_const_constructors
                  // ignore: sort_child_properties_last
                  child: const Text('Prestador de Servicios',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    // vistas presator de servicio
                    addPrestador(name, email, password, categoria);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff07708c)),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(13)),
                      foregroundColor:
                          MaterialStateProperty.all(const Color(0xffe5f3fb)),
                      side: MaterialStateProperty.all(const BorderSide(
                        color: Color(0xffe5f3fb),
                        width: 1.5,
                      )),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ))),
                )),
          ],
        ),
      ),
    );
  }
}

class _BackgroundFormFoto extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();

    //propiedades
    paint.color = const Color(0xff07708c);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.24, size.height * 0.69,
        size.width / 2, size.height * 0.76);
    path.quadraticBezierTo(size.width / 1.4, size.height * 0.80,
        3 * (size.width / 3), size.height * 0.76);
    path.lineTo(size.width, size.height * 0.63);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
