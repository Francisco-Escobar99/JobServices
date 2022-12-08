class Cliente {
  final String status;
  final String token;
  final String id;
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
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
    );
  }
}
