import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/auth/presentation/views/login_view.dart';
import 'package:orange_bay_new/features/auth/presentation/views/signup_view.dart';

void main() {
  runApp( myApp());
}

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}