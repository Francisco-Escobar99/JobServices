import 'dart:convert';

import 'package:http/http.dart' as http;

void conex() {
  Uri lick = Uri.parse("http://192.168.0.13:3000/cliente");
  // ------------------------
  http.get(lick).then((res) {
    // ignore: avoid_print
    print(res);
  });
}

conexpublicasion() {
  Uri lick = Uri.parse("http://192.168.0.13:3003/publicasion");
  http.get(lick).then((res) {
    // ignore: avoid_print
    print(res);
  });
}

Future addpubli(titulo, descripcion, cargo, idcliente, comentarios, direccion,
    nombreClie) async {
  String date = "http://192.168.0.13:4000/publicasion/addUser";
  var body = {
    'titulo': titulo,
    'descripcion': descripcion,
    'cargo': cargo,
    'idcliente': idcliente,
    'comentarios': comentarios,
    'direccion': direccion,
    'nombreClie': nombreClie,
  };
  String url = date;
  final http.Response response = await http.post(
    Uri.parse(url),
    body: json.encode(body),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    print(response.body);
  }
  return null;
}
Future mostar() async {
  String date = "http://192.168.0.13:4000/publicasion/verificar";
  Map data;
  List usersData;
  String url = date;
  final http.Response response = await http.get(Uri.parse(url),);
  if (response.statusCode == 200) {
    //print(response.body);
    data = json.decode(response.body);
    return response.body;
  }
  return null;
}

Future conexlogit(email, password) async {
  String date = "http://192.168.0.13:3000/auth/login";
  // 192.168.8.102
  var body = {'email': email, 'password': password};
  String url = date;
  final http.Response response = await http.post(
    Uri.parse(url),
    body: json.encode(body),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    var dato = response.body;
    Map<String, dynamic> clientMap = jsonDecode(dato);
    Cliente clie = Cliente.fromJson(clientMap);
    return clie;
  }
  return null;
}

Future conexLender(email, password) async {
  String date = "http://192.168.0.13:3001/auth/login";
  // 192.168.8.102
  var body = {'email': email, 'password': password};
  String url = date;
  final http.Response response = await http.post(
    Uri.parse(url),
    body: json.encode(body),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    var dato = response.body;
    Map<String, dynamic> clientMap = jsonDecode(dato);
    Prestador clie = Prestador.fromJson(clientMap);
    return clie;
  }
  return null;
}

class Cliente {
  final String status;
  final String token;
  final int id;
  final String name;
  final String email;

  const Cliente({
    required this.status,
    required this.token,
    required this.id,
    required this.name,
    required this.email,
  });

  factory Cliente.fromJson(Map<String, dynamic> json) {
    return Cliente(
      status: json['status'] as String,
      token: json['token'] as String,
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
    );
  }
}

class Prestador {
  final String status;
  final String token;
  final int id;
  final String name;
  final String email;
  //final String categoria;

  const Prestador({
    required this.status,
    required this.token,
    required this.id,
    required this.name,
    required this.email,
    //required this.categoria
  });

  factory Prestador.fromJson(Map<String, dynamic> json) {
    return Prestador(
      status: json['status'] as String,
      token: json['token'] as String,
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      //categoria:  json['categoria'] as String,
    );
  }
}

Future addcliente(name, email, password) async {
  // ----------------------------
  String date = "http://192.168.0.13:3000/cliente/addUser";
  var body = {'name': name, 'email': email, 'password': password};
  String url = date;
  final http.Response response = await http.post(
    Uri.parse(url),
    body: json.encode(body),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    print(response.body);
    return response.body;
  }
  return null;
}

Future addcotizacion(materiales, descripcion, precio, idpublicasion, idprestador, idcliente) async {
  // ----------------------------
  String date = "http://192.168.0.13:3002/cotizacion/addUser";
  var body = {
    'materiales': materiales, 
    'descripcion': descripcion, 
    'precio': precio,
    'idpublicasio': idpublicasion,
    'idprestador': idprestador,
    'idcliente': idcliente
  };
  String url = date;
  final http.Response response = await http.post(
    Uri.parse(url),
    body: json.encode(body),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    print(response.body);
    return response.body;
  }
  return null;
}

Future addPrestador(name, email, password, categoria) async {
  // ----------------------------
  String date = "http://192.168.0.13:3001/prestador/addUser";
  var body = {'name': name, 'email': email, 'password': password, 'categoria': categoria};
  String url = date;
  final http.Response response = await http.post(
    Uri.parse(url),
    body: json.encode(body),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    print(response.body);
    return response.body;
  }
  return null;
}

Future elCliente(id) async {
  String date = "http://192.168.0.13:4000/publicasion/deleteUser/";
  var dato = id;
  String url = date + dato;
  print(url);
  var body = {};

  final http.Response response = await http.post(
    Uri.parse(url),
    body: json.encode(body),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    print(response.body);
    return response.body;
  }
  return null;
}

Future edCliente(id,titulo,descr,cargo,idcliente,comen,direc,nombrecli,) async {
  String date = "http://192.168.0.13:4000/publicasion/updateUser/";
  var dato = id;
  String url = date + dato;
  print(url);
  var body = {'titulo':titulo,
    "descripcion":descr,
    "cargo": cargo,
    "idcliente": idcliente,
    "comentarios": comen,
    "direccion": direc,
    "nombreClie":nombrecli};
  final http.Response response = await http.post(
    Uri.parse(url),
    body: json.encode(body),
    headers: {"Content-Type": "application/json"},
  );

  if (response.statusCode == 200) {
    print(response.body);
    return response.body;
  }
  return null;
}