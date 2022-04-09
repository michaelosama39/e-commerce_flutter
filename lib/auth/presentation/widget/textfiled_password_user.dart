import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget TextFiledPasswordUser(String hintText, String labelText,String icon ,
    TextEditingController controller , Function(String) onchange) {
  String seleced;
  final List<String> errors = [];
  return TextFormField(
    obscureText: true,
    controller: controller,
    onChanged: (value) {
      onchange(value);
      seleced = value;
    },
    validator: (value) {
      value == null ? "Please $hintText" : null;
    },
    decoration: InputDecoration(
      hintText: hintText,
      labelText: labelText,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: Padding(
        padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
        child: SvgPicture.asset(
          icon,
          height: 20,
        ),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 42,
        vertical: 20,
      ),
      labelStyle: TextStyle(color: Color(0xFF757575)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(
          color: Color(0xFF757575),
        ),
        gapPadding: 10,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(
          color: Color(0xFF757575),
        ),
        gapPadding: 10,
      ),
    ),
  );
}