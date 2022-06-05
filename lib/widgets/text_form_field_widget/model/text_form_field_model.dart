import 'package:flutter/material.dart';

class TextFormFieldModel {
  final String? labelText;
  final Function(String)? onSaved;
  final Function(String)? onChanged;
  final bool? obscureText;
  final Widget? suffixIcon;
  final int? maxLines;
  final TextInputType? textInputType;
  final BorderRadius? borderRadius;
   final Color? colorBorder ;
   final Color? backgroundColor ;
   final EdgeInsetsGeometry? contentPadding ;

  TextFormFieldModel({required this.labelText,
     this.onSaved,
     this.onChanged,
    this.obscureText = false,
    this.suffixIcon,
    this.maxLines = 1,
    this.textInputType,
    this.borderRadius ,
  this.colorBorder=  Colors.black,
    this.contentPadding,
    this.backgroundColor
  });
}
