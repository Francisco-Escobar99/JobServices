import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class viewDisplacementGroup_lender extends StatefulWidget {
  final int id;
  final String email;
  final String name;
  final String toke;
  viewDisplacementGroup_lender({
    required this.toke,
    required this.id,
    required this.name,
    required this.email,
  });
  //viewDisplacementGroup_lender({required this.toke, required this.id, required this.name, required this.email, });
  //viewDisplacementGroup_lender({Key? key}) : super(key: key);

   @override
   State<viewDisplacementGroup_lender> createState() => _viewDisplacementGroup_lenderState(id: id, email: email, name: name, toke: toke);
}

class _viewDisplacementGroup_lenderState extends State<viewDisplacementGroup_lender> {
  final int id;
  final String email;
  final String name;
  final String toke;
  _viewDisplacementGroup_lenderState({required this.toke, required this.id, required this.name, required this.email, });
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
              Container(
                //margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 30),
                margin: const EdgeInsets.only(top: 3, left: 30, right: 210, bottom: 3),
                color:  const Color(0xff04738b),
                height: 1,
              ),
              Row(
                children: [
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          SizedBox(width: 30),
                          Icon(Icons.phone, size: 15, color: Color(0xff04738b)),
                          SizedBox(width: 5),
                          Text('Número de teléfono', style: TextStyle(color: Color(0xff04738b)),),
                          SizedBox(width: 9)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 25),
                          Icon(Icons.email, size: 15, color: Color(0xff04738b)),
                          SizedBox(width: 5),
                          Text(email, style: TextStyle(color: Color(0xff04738b)),),
                          SizedBox(width: 10)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          SizedBox(width: 0),
                          Icon(Icons.badge, size: 15, color: Color(0xff04738b)),
                          SizedBox(width: 5),
                          Text('Curp', style: TextStyle(color: Color(0xff04738b)),),
                          SizedBox(width: 70)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          SizedBox(width: 30),
                          Icon(Icons.calendar_month, size: 15, color: Color(0xff04738b)),
                          SizedBox(width: 5),
                          Text('Fecha de nacimiento', style: TextStyle(color: Color(0xff04738b)),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          SizedBox(width: 30),
                          Icon(Icons.person, size: 15, color: Color(0xff04738b)),
                          SizedBox(width: 5),
                          Text('Sexo', style: TextStyle(color: Color(0xff04738b)),),
                          SizedBox(width: 100,)
                        ],
                      )
                    ],
                  ),
                  Container(
                    //alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(left: 50),
                    height: 115,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff29859a)),
                    ),
                    child: ListView(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: const Text('Recomendación', style: TextStyle(color: Color(0xff29859a)),),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: const Text('2.0', style: TextStyle(color: Color(0xff29859a), fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                        Row(
                          children: const [
                            SizedBox(width: 8),
                            Icon(Icons.star_border, color: Color(0xff29859a)),
                            Icon(Icons.star_border, color: Color(0xff29859a)),
                            Icon(Icons.star_border, color: Colors.grey),
                            Icon(Icons.star_border, color: Colors.grey),
                            Icon(Icons.star_border, color: Colors.grey),
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: const Text('1000', style: TextStyle(color: Color(0xff29859a)),),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Row(
                            children: const [
                              SizedBox(width: 10),
                              Text('Ver comentarios', style: TextStyle(color: Color(0xff29859a))),
                              Icon(Icons.keyboard_double_arrow_right, color: Color(0xff29859a),)
                            ],
                          ),
                        )
                      ],
                    )
                    //color: Colors.amber,
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, left: 30, right: 30),
                child: const Text('Experiencia de oficio', style: TextStyle(color: Color(0xff04738b)),),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                color:  const Color(0xff04738b),
                height: 1,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Row(
                  children: const [
                    Icon(Icons.home_repair_service, color: Color(0xff04738b)),
                    SizedBox(width: 5),
                    Text('Puesto de trabajo', style: TextStyle(color: Color(0xff04738b))),
                    SizedBox(width: 40),
                    Icon(Icons.home_repair_service, color: Color(0xff04738b),),
                    SizedBox(width: 5),
                    Text('Puesto de trabajo', style: TextStyle(color: Color(0xff04738b))),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Row(
                  children: const [
                    Icon(Icons.location_city, color: Color(0xff04738b)),
                    SizedBox(width: 5),
                    Text('Empresa', style: TextStyle(color: Color(0xff04738b))),
                    SizedBox(width: 95),
                    Icon(Icons.location_city, color: Color(0xff04738b),),
                    SizedBox(width: 5),
                    Text('Empresa', style: TextStyle(color: Color(0xff04738b))),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Row(
                  children: const [
                    Icon(Icons.calendar_month, color: Color(0xff04738b)),
                    SizedBox(width: 5),
                    Text('Fecha de trabajo', style: TextStyle(color: Color(0xff04738b))),
                    SizedBox(width: 45),
                    Icon(Icons.calendar_month, color: Color(0xff04738b),),
                    SizedBox(width: 5),
                    Text('Fecha de trabajo', style: TextStyle(color: Color(0xff04738b))),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, left: 30, right: 30),
                child: const Text('Área de especialidad', style: TextStyle(color: Color(0xff04738b)),),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                color:  const Color(0xff04738b),
                height: 1,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Row(
                  children: [
                    // Icon(Icons.stars, color: Color(0xff04738b)),
                    // SizedBox(width: 5),
                    // Text('Especialidad', style: TextStyle(color: Color(0xff04738b))),
                    // SizedBox(width: 10),
                    Icon(Icons.stars, color: Color(0xff04738b)),
                    SizedBox(width: 5),
                    Text('Especialidad', style: TextStyle(color: Color(0xff04738b))),
                    SizedBox(width: 10),
                    Icon(Icons.stars, color: Color(0xff04738b)),
                    SizedBox(width: 5),
                    Text('Especialidad', style: TextStyle(color: Color(0xff04738b))),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, left: 30, right: 30),
                child: const Text('Documentos', style: TextStyle(color: Color(0xff04738b)),),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                color:  const Color(0xff04738b),
                height: 1,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text('Curriculum', style: TextStyle(color: Color(0xff04738b))),
                      Container(  
                      alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                        //color: Colors.amber,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(170, 172, 232, 246),
                          border: Border.all(color: const Color(0xff04738b))
                        ),
                        child: Row(
                          children: const [
                            SizedBox(width: 5),
                            Icon(Icons.upload_file, size: 15, color: Color(0xff04738b),),
                            Text('Seleccionar archivo', style: TextStyle(fontSize: 10, color: Color(0xff04738b)))
                          ],
                        )
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Credencial', style: TextStyle(color: Color(0xff04738b))),
                      Container( 
                        alignment: Alignment.center, 
                        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                        //color: Colors.amber,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(170, 172, 232, 246),
                          border: Border.all(color: const Color(0xff04738b))
                        ),
                        child: Row(
                          children: const [
                            SizedBox(width: 5),
                            Icon(Icons.upload_file, size: 15, color: Color(0xff04738b),),
                            Text('Seleccionar archivo', style: TextStyle(fontSize: 10, color: Color(0xff04738b)))
                          ],
                        )
                      ),
                    ],
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: const Text('Redes sociales', style: TextStyle(color: Color(0xff04738b)),),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                color:  const Color(0xff04738b),
                height: 1,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 10),
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
                margin: const EdgeInsets.only(top: 4, bottom: 10),
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
      path.lineTo(size.width, 0); 
      canvas.drawPath(path, paint);
    }

    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
      return true;
    }
}