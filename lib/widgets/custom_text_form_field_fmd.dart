import 'package:flutter/material.dart';

class Customtextformfield extends StatelessWidget {
  
  final String? hintText;
  final TextInputType? keyboardType;
  final Icon? icon;
  final Map<String, String> imprimir;
  final bool obscureText;

  const Customtextformfield({Key? key, this.keyboardType, required this.obscureText, this.hintText, this.icon, required this.imprimir}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: (value) => imprimir!['name'] = value,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(),
        suffixIcon: icon,
      ),
    );
  }
}