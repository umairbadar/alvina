import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {

  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.width,
    required this.color
  });

  final String title;
  final Null Function() onPressed;
  final double? width;
  final Color color;

  @override
  State<StatefulWidget> createState() => _CustomButtonState();

}

class _CustomButtonState extends State<CustomButton> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          bottom: 10.0
      ),
      child: SizedBox(
        width: widget.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: widget.color,
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              )
          ),
          onPressed: widget.onPressed,
          child: Text(
            widget.title,
          ),
        ),
      ),
    );
  }
}