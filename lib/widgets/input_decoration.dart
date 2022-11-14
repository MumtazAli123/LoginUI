import 'package:flutter/material.dart';

class UIConfig {
  InputDecoration inputDecoration(String hintText, String labelText) {
    return InputDecoration(
      isDense: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      fillColor: Colors.blue,
      hintText: hintText,
      labelText: labelText,
    );
  }
}