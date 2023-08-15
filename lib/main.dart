import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/program/presentation/views/program_layout.dart';

import 'package:orange_bay_new/features/splash/splash_screen1.dart';



void main() {
  runApp( myApp());
}

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProgramLayout(),
    );
  }
}