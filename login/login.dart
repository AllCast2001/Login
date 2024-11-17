import 'package:flutter/material.dart';
import 'package:myapp/login/registro.dart';
import 'package:myapp/login/home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _passwordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }
///
  void _login() {
    final email = emailController.text;
    final password = passwordController.text;

    if (email == 'ajcastron@unah.hn' && password == '20192002956') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen(email)),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Credenciales incorrectas')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      
      appBar: AppBar(title: Text('Iniciar sesión'),foregroundColor: const Color.fromARGB(255, 255, 255, 255),backgroundColor: const Color.fromARGB(255, 0, 0, 0),),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Correo institucional',border: OutlineInputBorder())  
              
            ),
            TextField(
              controller: passwordController,
              obscureText: !_passwordVisible,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
                

                
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: _togglePasswordVisibility,
                ),
              ),
            ),
            ElevatedButton(
              
              onPressed: _login,
              child: Text('Iniciar sesión')
              
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Registrarse()),
                );
              },
              child: Text('¿No tienes cuenta? Regístrate'),
            ),
          ],
        ),
      ),
    );
  }
}
