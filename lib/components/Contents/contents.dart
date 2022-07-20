// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:test5/components/constant.dart';

Widget defaultButton(myWidth, myColor, titleButton, colorTitle, function) {
  return GestureDetector(
    onTap: () {
      function();
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
          width: myWidth,
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 30,
          ),
          alignment: AlignmentDirectional.center,
          decoration: BoxDecoration(
            color: myColor,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: Text(
            titleButton,
            style: TextStyle(
              color: colorTitle,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          )),
    ),
  );
}

Widget defaultButtonTwo({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 3.0,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      height: 50.0,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );

Widget defaultTextButton({
  required Function function,
  required String text,
}) {
  return TextButton(
    onPressed: () {
      function();
    },
    style: ButtonStyle(),
    child: Text(
      text.toUpperCase(),
      style: TextStyle(
          color: primaryColor, fontWeight: FontWeight.bold, fontSize: 16),
    ),
  );
}

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function? onSubmit,
  Function? onChange,
  Function? onTap,
  bool isPassword = false,
  required Function validate,
  required String label,
  IconData? prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: (s) {
        onSubmit!(s);
      },
      enabled: isClickable,
      validator: (s) {
        return validate(s);
      },
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: () {
                  suffixPressed!();
                },
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: const OutlineInputBorder(),
      ),
    );
