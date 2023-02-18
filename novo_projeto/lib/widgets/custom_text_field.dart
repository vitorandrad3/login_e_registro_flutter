import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.label,
      required this.onChanged,
      this.obscureText = false});

  final String label;
  final Function(String string) onChanged;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.88,
      child: TextFormField(
        obscureText: obscureText,
        validator: (value) => value!.isEmpty ? 'informe o E-mail' : null,
        onChanged: onChanged,
        decoration: InputDecoration(
          label: Text(label),
        ),
      ),
    );
  }
}
