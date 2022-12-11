import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class viewProfile_client extends StatefulWidget {
  final int id;
  final String email;
  final String name;
  final String toke;
  viewProfile_client({
    required this.toke,
    required this.id,
    required this.name,
    required this.email,
  });
  //viewProfile_client({Key? key}) : super(key: key);

  @override
  State<viewProfile_client> createState() => _viewProfile_clientState(id: id, email: email, name: name, toke: toke);
}

class _viewProfile_clientState extends State<viewProfile_client> {
  final int id;
  final String email;
  final String name;
  final String toke;
  _viewProfile_clientState({required this.toke, required this.id, required this.name, required this.email, });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _BacgroundProfile(),
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 12, left: 350),
                child: const Icon(Icons.edit, color: Colors.white),
              ),
              Container(
                margin: const EdgeInsets.only(top: 1),
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color:const Color(0xff04738b),
                    width: 2
                  ),
                ),
                child: const Icon(Icons.account_circle, size: 160, color: Color(0xff04738b),),
                //color: Colors.amber,
              ),
              Container(
                alignment: Alignment.center,
                child: Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: Text(name, style: TextStyle(color: Color(0xff04738b), fontSize: 30, fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text('Ciudad/Estado', style: TextStyle(color: Color(0xff04738b), fontSize: 20),),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: const Text('Datos del contacto', style: TextStyle(color: Color(0xff04738b)),),
              ),
              // linea divisora
              Container(
                margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 30),
                color:  const Color(0xff04738b),
                height: 1,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: Row(
                  children: const [
                    Icon(Icons.call, size: 15, color: Color(0xff04738b),),
                    SizedBox(width: 5),
                    Text('Número de teléfono', style: TextStyle(color: Color(0xff04738b))),
                    //
                    SizedBox(width: 30),
                    Icon(Icons.calendar_month, color: Color(0xff04738b), size: 15,),
                    SizedBox(width: 5),
                    Text('Fecha de nacimiento', style: TextStyle(color: Color(0xff04738b)),)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: Row(
                  children: [
                    Icon(Icons.email, size: 15, color: Color(0xff04738b),),
                    SizedBox(width: 5),
                    Text(email, style: TextStyle(color: Color(0xff04738b))),
                    //
                    SizedBox(width: 39),
                    Icon(Icons.person, color: Color(0xff04738b), size: 15,),
                    SizedBox(width: 5),
                    Text('Sexo', style: TextStyle(color: Color(0xff04738b)),)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: const Text('Documentos', style: TextStyle(color: Color(0xff04738b)),),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 30),
                color:  const Color(0xff04738b),
                height: 1,
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 10, left: 155),
                child: Column(
                  ///mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.photo, color: Color(0xff04738b), size: 20,),
                        SizedBox(width: 5),
                        Text('Credencial', style: TextStyle(color: Color(0xff04738b)),)
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 135, vertical: 5),
                //color: Colors.amber,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(170, 172, 232, 246),
                  border: Border.all(color: const Color(0xff04738b))
                ),
                child: Row(
                  children: const [
                    SizedBox(width: 18),
                    Icon(Icons.upload_file, size: 15, color: Color(0xff04738b),),
                    Text('Seleccionar archivo', style: TextStyle(fontSize: 10, color: Color(0xff04738b)))
                  ],
                )
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: const Text('Redes sociales', style: TextStyle(color: Color(0xff04738b)),),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 30),
                color:  const Color(0xff04738b),
                height: 1,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: Row(
                  children: const [
                    Icon(Icons.facebook, color: Color(0xff04738b), size: 15,),
                    SizedBox(width: 5),
                    Text('Facebook', style: TextStyle(color: Color(0xff04738b))),
                    //
                    SizedBox(width: 95),
                    Icon(Icons.photo_camera, color: Color(0xff04738b), size: 15,),
                    SizedBox(width: 5),
                    Text('Instagram', style: TextStyle(color: Color(0xff04738b)),)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                color:  const Color(0xff04738b),
                height: 1,
              ),
              Container(
                height: 45,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff04738b),
                ),
                child: const Image(image: AssetImage('assets/images/logo.png')),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 4),
                child: const Text('Se unió en el 2021', style: TextStyle(color: Color(0xff04738b)),),
              )
            ],
          ),
        ),
      ),
    );
  }
}

  class _BacgroundProfile extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
      final paint = Paint();
      //propiedades
      paint.color = const Color(0xff04738b);
      paint.style = PaintingStyle.fill;
      paint.strokeWidth = 20;

      final path = Path();
      path.lineTo(0, size.height * 0.30); // 30
      path.quadraticBezierTo(
          size.width * 0.500,
          size.height * 0.0160, // 0.160 
          size.width * 0.999,
          size.height * 0.30); // 30
      // path.quadraticBezierTo(
      //     size.width * 0.5,
      //     size.height * 0.30, 
      //     size.width * 0.15,
      //     size.height * 0.27);
      path.lineTo(size.width, 0); 
      canvas.drawPath(path, paint);
    }

    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
      return true;
    }
}