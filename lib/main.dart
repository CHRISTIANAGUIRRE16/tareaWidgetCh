import 'package:flutter/material.dart';
import 'package:widget/widget/custom_text_field.dart'; // Importar el archivo custom_text_field.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nombre del Proyecto', // Título de la aplicación
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(), // Página de inicio de la aplicación
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'), // Título de la barra de navegación
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              icon: Icons.email, // Icono para el campo de texto
              hintText: 'Enter your email', // Texto de sugerencia para el campo de texto
              labelText: 'Email', // Etiqueta del campo de texto
              keyboardType: TextInputType.emailAddress, // Tipo de teclado para el campo de texto
            ),
            SizedBox(height: 16), // Espacio vertical entre los campos de texto
            CustomTextField(
              icon: Icons.lock, // Icono para el campo de texto
              hintText: 'Enter your password', // Texto de sugerencia para el campo de texto
              labelText: 'Password', // Etiqueta del campo de texto
              obscureText: true, // Indica si el texto debe mostrarse oculto (contraseña)
            ),
          ],
        ),
      ),
    );
  }
}
