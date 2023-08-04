import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/auth/presentation/views/login_view.dart';
import 'package:orange_bay_new/features/auth/presentation/views/signup_view.dart';
import 'package:orange_bay_new/features/booking_history/presentation/views/book_view.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/profile_view.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/security_view.dart';
import 'package:orange_bay_new/features/payment/presentation/views/user_view.dart';
import 'package:orange_bay_new/features/program/presentation/views/program_layout.dart';

import 'features/program/presentation/views/book_view.dart';

void main() {
  runApp( myApp());
}

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookingView(),
    );
  }
}