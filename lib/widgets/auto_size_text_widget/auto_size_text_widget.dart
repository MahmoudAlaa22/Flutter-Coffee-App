import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/theme/text_style.dart';

class AutoSizeTextWidget extends StatelessWidget {
  const AutoSizeTextWidget(
      {Key? key,
      required this.text,
      this.style,
      this.maxLines,
      this.maxFontSize = double.infinity,
      this.minFontSize = 20})
      : super(key: key);
  final String text;
  final TextStyle? style;
  final int? maxLines;
  final double? maxFontSize;
  final double? minFontSize;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text.tr,
      textAlign: TextAlign.center,
      style: style ?? AppTextStyle.robotoTextStyle,
      maxLines: maxLines,
      maxFontSize: maxFontSize!,
      minFontSize: minFontSize!,
    );
  }
}
