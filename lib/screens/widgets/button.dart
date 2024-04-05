import 'package:codeland/helpers/constants/app_styles.dart';
import 'package:flutter/material.dart';

class Button extends ElevatedButton {
  Size? buttonSize;
  OutlinedBorder shape = AppStyle.buttonShape;
  Color? buttonColor = AppStyle.buttonBackgroundColor;
  Button(
      {required onPressed, required child, this.buttonColor, this.buttonSize})
      : super(
          onPressed: onPressed,
          child: child,
          style: ElevatedButton.styleFrom(
            elevation: 4,
            backgroundColor: buttonColor ?? AppStyle.buttonBackgroundColor,
            shape: AppStyle.buttonShape,
            fixedSize: buttonSize,
          ),
        );
}
