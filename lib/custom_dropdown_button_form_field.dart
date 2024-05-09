import 'package:flutter/material.dart';

class CustomDropdownFormField extends StatelessWidget {
  final List<String> items;
  final String? value;
  final ValueChanged<String?>? onChanged;
  final String? hintText;

  const CustomDropdownFormField({
    Key? key,
    required this.items,
    required this.value,
    required this.onChanged,
    required this.hintText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      borderRadius: BorderRadius.circular(12),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 16,
          color: Colors.grey[600],
          fontWeight: FontWeight.w300,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        fillColor: Colors.grey[200],
        contentPadding: EdgeInsets.all(16),
      ),
      // dropdownColor: Colors.yellow,
      value: value,
      onChanged: onChanged,
      items: items.map((String item) {
        return DropdownMenuItem(
          child: Text(item),
          value: item,
        );
      }).toList(),
    );
  }
}
