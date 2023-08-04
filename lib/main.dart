import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/booking_history/presentation/views/book_view.dart';


void main() {
  runApp( myApp());
}

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookingView(),
    );
  }
}