import 'package:flutter/material.dart';

class GenericTextField extends TextFormField {
  GenericTextField._(
      {Key? key,
      super.controller,
      super.keyboardType,
      super.autocorrect,
      super.obscureText,
      super.decoration})
      : super(
          key: key,
        );

  static final OutlineInputBorder border =
      OutlineInputBorder(borderRadius: BorderRadius.circular(10));

  factory GenericTextField() {
    return GenericTextField._(decoration: InputDecoration(border: border));
  }

  factory GenericTextField.email(
      {TextEditingController? textEditingController}) {
    return GenericTextField._(
      controller: textEditingController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(border: border),
    );
  }

  factory GenericTextField.password(
      {bool obscureText = true,
      TextEditingController? textEditingController,
      required VoidCallback eyeTap}) {
    return GenericTextField._(
      obscureText: obscureText,
      controller: textEditingController,
      decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: eyeTap,
              icon: Icon(
                Icons.remove_red_eye,
                color: obscureText ? Colors.red : Colors.grey,
              )),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
