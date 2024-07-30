import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  const CustomTextfield(
      {super.key, required this.hint, this.onchange, this.obscuretext = false});
  final String hint;
  final Function(String)? onchange;
  final bool obscuretext;
  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscuretext,
      validator: (value) {
        if (value!.isEmpty) {
          return 'is required';
        }
      },
      onChanged: widget.onchange,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: const TextStyle(color: Colors.grey),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
