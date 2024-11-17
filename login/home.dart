import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  final String email;

  Principal(this.email);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bienvenido')),
      body: Center(
        child: Text('Correo: $email', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
