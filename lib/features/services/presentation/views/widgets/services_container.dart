import 'package:flutter/material.dart';
class ServiceContainer extends StatelessWidget {
  const ServiceContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height/40),
      child: Container(
        height: MediaQuery.of(context).size.height/4,
        color: Colors.red,
      ),
    );
  }

}
