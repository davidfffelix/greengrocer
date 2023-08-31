// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool obscureText;
  final IconData icon;
  final IconData? suffixIcon;
  final String labelText;

  const CustomTextField({
    Key? key,
    this.obscureText = false,
    required this.icon,
    this.suffixIcon,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          suffixIcon: obscureText
              ? IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.visibility),
                )
              : null,
          labelText: labelText,
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
