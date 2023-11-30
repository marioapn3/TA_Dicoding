import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Icon? icon;
  final String hText;

  const CustomTextField({
    Key? key,
    this.icon,
    required this.hText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 16),

        prefixIcon: icon,
        // 'Your Email Address',
        hintText: hText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
