import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final IconData? icon; // Icono para el campo de texto
  final IconData? suffixIcon; // Icono adicional para el campo de texto
  final String? hintText; // Texto de sugerencia para el campo de texto
  final String? labelText; // Etiqueta del campo de texto
  final String? helperText; // Texto de ayuda para el campo de texto
  final bool autofocus; // Indica si el campo de texto debe tener el enfoque automático
  final TextInputType? keyboardType; // Tipo de teclado para el campo de texto
  final bool obscureText; // Indica si el texto debe mostrarse oculto (contraseña)

  const CustomTextField({
    Key? key,
    this.icon,
    this.suffixIcon,
    this.hintText,
    this.labelText,
    this.helperText,
    this.autofocus = false,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus, // Configuración del enfoque automático
      keyboardType: keyboardType, // Configuración del tipo de teclado
      obscureText: obscureText, // Configuración de la visibilidad del texto
      decoration: InputDecoration(
        icon: icon != null ? Icon(icon) : null, // Mostrar el icono si está definido
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null, // Mostrar el icono adicional si está definido
        hintText: hintText, // Mostrar el texto de sugerencia
        labelText: labelText, // Mostrar la etiqueta del campo de texto
        helperText: helperText, // Mostrar el texto de ayuda
      ),
    );
  }
}
