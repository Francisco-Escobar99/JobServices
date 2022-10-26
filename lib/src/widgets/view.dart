import 'package:flutter/material.dart';

class ViewWelcome extends StatelessWidget {
  const ViewWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _BackgroundDesign(),
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
