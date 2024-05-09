import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    required this.controller,
    // required this.validator,
    required this.hintText,
    // this.obscureText = false,
  });

  final TextEditingController controller;
  // final String? Function(String?)? validator;
  final String hintText;
  // bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      // obscureText: obscureText,
      decoration: InputDecoration(

        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.grey[200],
        contentPadding: EdgeInsets.all(16),
      ),
      // validator: validator,
    );
  }
}