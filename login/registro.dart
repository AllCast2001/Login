import 'package:flutter/material.dart';
import '../validators/validator.dart';

class Registrarse extends StatefulWidget {
  @override
  _RegistrarseScreenState createState() => _RegistrarseScreenState();
}

class _RegistrarseScreenState extends State<Registrarse> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  bool _validateForm() {
    final name = nameController.text;
    final email = emailController.text;
    final phone = phoneController.text;
    final password = passwordController.text;
    final confirmPassword = confirmPasswordController.text;

    if (name.length < 3 || name.length > 10) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('El nombre debe tener entre 3 y 10 caracteres')),
      );
      return false;
    }

    if (!Validators.isValidEmail(email)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('El correo no es válido. Debe ser de la UNAH.')),
      );
      return false;
    }

    if (!Validators.isValidPhone(phone)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('El teléfono debe iniciar con 3 o 9 y tener 8 dígitos')),
      );
      return false;
    }

    if (!Validators.isValidPassword(password)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('La contraseña debe tener al menos 8 caracteres, incluyendo una mayúscula y un carácter especial')),
      );
      return false;
    }

    if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Las contraseñas no coinciden')),
      );
      return false;
    }

    return true;
  }
}
