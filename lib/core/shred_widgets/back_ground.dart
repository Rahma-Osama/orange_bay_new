import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/3,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/img_1.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
