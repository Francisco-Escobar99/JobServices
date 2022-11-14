import 'package:flutter/material.dart';

class ChangePassword_view extends StatelessWidget {
  const ChangePassword_view({Key? key}) : super(key: key);

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
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 130)),
                Image.asset(
                  'assets/images/logo.png',
                  height: 145,
                  alignment: Alignment.topRight,
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 60, bottom: 40, right: 30, left: 30),
              // ignore: prefer_const_constructors
              child: Text('Ingresa tu Nueva Contraseña',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Color(0xff06708d))),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10, right: 30, left: 30),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_reset,
                  ),
                  hintText: 'Contraseña',
                ),
                obscureText: true,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
              child: TextFormField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_reset,
                  ),
                  hintText: 'Confirmar Contraseña',
                ),
                obscureText: true,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 38,
                left: 38,
                top: 70,
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
                child: const Text('Confirmar',
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
