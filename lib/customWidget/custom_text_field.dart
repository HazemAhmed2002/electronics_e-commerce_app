import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusColor: Colors.white,
        hintText: "Search Products...",
        hintStyle: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
        labelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
        suffixIcon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        labelText: "Search Products...",
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 3,
              color: Color(0xff333742),
            ),
            borderRadius: BorderRadius.circular(25.0)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 3,
              color: Color(0xff333742),
            ),
            borderRadius: BorderRadius.circular(25.0)),
      ),
    );
  }
}
