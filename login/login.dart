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
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      
      appBar: AppBar(title: Text('Iniciar sesión'),foregroundColor: const Color.fromARGB(255, 255, 255, 255),backgroundColor: const Color.fromARGB(255, 0, 0, 0),),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Correo institucional',icon: Icon(Icons.email),iconColor: Color(const Color.fromARGB(255, 0, 0, 0).value)
              )  
         
              
            ),
            TextField(
              controller: passwordController,
              obscureText: !_passwordVisible,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                icon: Icon(Icons.lock), 
                iconColor: Color(const Color.fromARGB(255, 0, 0, 0).value),
                

                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off, 
                  ),
                  onPressed: _togglePasswordVisibility,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40.0),
              ),
            ElevatedButton(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3157757786.
              style: ButtonStyle(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1704054974.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2797474911.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:568404719.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:683820758.
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 255, 255, 255)),foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 0, 0)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),

                ),
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
