import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {

  const CustomIconButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.width,
    required this.color,
    required this.icon,
    required this.foregroundColor
  });

  final String title;
  final Null Function() onPressed;
  final double? width;
  final Color color;
  final IconData icon;
  final Color foregroundColor;

  @override
  State<StatefulWidget> createState() => _CustomIconButtonState();

}

class _CustomIconButtonState extends State<CustomIconButton> {


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
              foregroundColor: widget.foregroundColor,
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
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(
                    widget.icon
                ),
              ),
              Expanded(
                child: Text(
                  widget.title,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}