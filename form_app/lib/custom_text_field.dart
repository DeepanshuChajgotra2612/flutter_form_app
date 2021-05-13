import 'package:flutter/material.dart';

Widget textField({String labelText, String hintText}) => TextFormField(
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        labelText: labelText,
        hintText: hintText,
      ),
    );
