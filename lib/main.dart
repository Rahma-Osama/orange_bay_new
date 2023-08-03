import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/home/presentation/views/home_layout.dart';

import 'package:orange_bay_new/features/payment/presentation/views/pay_view.dart';



void main() {
  runApp( myApp());
}

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout( ),
    );
  }
}