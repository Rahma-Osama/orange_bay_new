import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/payment/presentation/views/confirm_view.dart';

import 'package:orange_bay_new/features/payment/presentation/views/pay_view.dart';

import 'features/payment/presentation/views/user_view.dart';



void main() {
  runApp( myApp());
}

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserView(),
    );
  }
}