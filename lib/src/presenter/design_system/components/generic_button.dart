import 'package:flutter/material.dart';

class GenericButton extends ElevatedButton {
  const GenericButton._(
      {required super.onPressed, required super.child, super.style});

  factory GenericButton.primary(
      {required VoidCallback onPressed, required Widget child}) {
    return GenericButton._(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
      ),
      child: child,
    );
  }
}
