import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hint,
    required this.keyboardType,
    required this.textInputAction,
    required this.textInputFormatters,
    required this.maxLength,
    required this.icon,
    required this.obscureText,
    required this.onSaved,
    required this.validator
  });

  final TextEditingController controller;
  final String hint;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final List<TextInputFormatter> textInputFormatters;
  final int maxLength;
  final Icon icon;
  final bool obscureText;
  final Null Function(String? value) onSaved;
  final String? Function(String? value) validator;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          bottom: 10.0
      ),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          counterText: '',
          labelText: widget.hint,
          hintText: widget.hint,
          prefixIcon: widget.icon,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
                color: Color(0xff896768),
                width: 2.0
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Color(0xff896768),
              width: 2.0,
            ),
          ),
        ),
        obscureText: widget.obscureText,
        maxLength: widget.maxLength,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        inputFormatters: widget.textInputFormatters,
        onSaved: widget.onSaved,
        validator: widget.validator,
      ),
    );
  }
}