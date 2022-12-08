import 'dart:convert';

import 'package:http/http.dart' as http;

void conex() {
  Uri lick = Uri.parse("http://192.168.0.4:3000/cliente");
  // ------------------------

  http.get(lick).then((res) {
    // ignore: avoid_print
    print(res);
  });
}

conexpublicasion() {
  Uri lick = Uri.parse("http://192.168.0.4:3003/publicasion");

  http.get(lick).then((res) {
    // ignore: avoid_print
    print(res);
  });
}

Future addpubli(titulo, descripcion, cargo, idcliente, comentarios, direccion,
    nombreClie) async {
  String date = "http://192.168.0.4:4000/publicasion/addUser";
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
  String date = "http://192.168.0.4:4000/publicasion/verificar";
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
  String date = "http://192.168.0.4:3000/auth/login";
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

Future addcliente(name, email, password) async {
  // ----------------------------
  String date = "http://192.168.0.4:3000/cliente/addUser";
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
