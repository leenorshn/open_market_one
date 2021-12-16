import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.label,
    required this.onChanged,
    this.length,
    this.inputType,
  }) : super(key: key);

  final String label;
  final Function(String v) onChanged;
  final int? length;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: length,
      onChanged: onChanged,
      keyboardType: inputType,
      decoration: InputDecoration(
        label: Text(label),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
