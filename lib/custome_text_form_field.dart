import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    required this.controller,
    // required this.validator,
    required this.prefix,
  }) : super(key: key);

  final TextEditingController controller;
  // final String? Function(String?)? validator;
  final String prefix;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: "Type here",
          hintStyle:  TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w300),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15.r)
          ),
          filled: true,
          fillColor: Colors.lightBlue[50],
          contentPadding: EdgeInsets.all(16.w),
        ),
        validator: (value) {
          if (value!.isEmpty || value == null) {
            return "please enter value !";
          }
          return null;
        },
      ),
    );
  }
}
