
import 'package:flutter/material.dart';

Widget defaultText({
  TextEditingController? controller ,
  required TextInputType type,
  Function(String)? onChange,
  FormFieldValidator? validate,
  required String label ,
  IconData? prefix,
  bool isObscure = false,
  IconData? suffix,
  Function()? pressed,
  bool? enable,

}) => TextFormField(
  enabled: enable,
  controller: controller,
  obscureText: isObscure,
  decoration:  InputDecoration(
    labelText: label,
    prefixIcon: Icon(prefix),
    suffixIcon: suffix!=null ? IconButton(
      onPressed: pressed,
      icon: Icon(
        suffix,),
    )
        : null,
    border: const OutlineInputBorder(),
  ),
  keyboardType: type,
  onChanged: onChange,
  validator: validate,
);