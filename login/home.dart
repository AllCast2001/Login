import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String email;

  HomeScreen(this.email);

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
