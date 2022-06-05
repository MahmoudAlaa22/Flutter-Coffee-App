import 'package:flutter/material.dart';

import '../../common/theme/text_style.dart';
import 'model/text_form_field_model.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({Key? key, required this.textFormFieldModel})
      : super(key: key);
  final TextFormFieldModel textFormFieldModel;

  @override
  Widget build(BuildContext context) {
    final InputBorder inputBorder = OutlineInputBorder(
        borderSide: BorderSide(
          color: textFormFieldModel.colorBorder!,
        ),
        borderRadius: textFormFieldModel.borderRadius != null
            ? textFormFieldModel.borderRadius!
            : BorderRadius.circular(0.0));
    return TextFormField(
      style: AppTextStyle.robotoTextStyle,
      decoration: InputDecoration(
        filled: textFormFieldModel.backgroundColor!=null?true:false,
          fillColor: textFormFieldModel.backgroundColor,
          contentPadding: textFormFieldModel.contentPadding,
          labelStyle: AppTextStyle.robotoTextStyle,
          labelText: textFormFieldModel.labelText,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          suffixIcon: textFormFieldModel.suffixIcon),
      obscureText: textFormFieldModel.obscureText!,
      onSaved: (v) {
        textFormFieldModel.onSaved!(v!);
      },
      onChanged: (v) {
        textFormFieldModel.onChanged!(v);
      },
      validator: (v) {
        if (v!.isEmpty) {
          return "You should not make this field empty";
        }
        return null;
      },
      maxLines: textFormFieldModel.maxLines,
      keyboardType: textFormFieldModel.textInputType,
    );
  }
}
