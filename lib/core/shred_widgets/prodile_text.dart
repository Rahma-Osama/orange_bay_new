
import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';

Widget defaultTextPro({
  TextEditingController? controller ,
  required TextInputType type,
  Function(String)? onChange,
  FormFieldValidator? validate,
  String? label ,
  String? hint ,
  IconData? prefix,
  bool isObscure = false,
  IconData? suffix,
  Function()? pressed,
  Function()? tap,
  bool? enable,

}) => TextFormField(

  onTap: tap,
  enabled: enable,
  controller: controller,
  obscureText: isObscure,
  decoration:  InputDecoration(
    labelText: label,
    hintText: hint,
    prefixIcon: Icon(prefix),
    suffixIcon: suffix!=null ? IconButton(
      onPressed: pressed,
      icon: Icon(
        suffix,),
    )
        : null,
    border: const OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: MAIN_ORANGE, width: 2.0),
    ),
  ),

  keyboardType: type,
  onChanged: onChange,
  validator: validate,

);