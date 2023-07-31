import 'package:flutter/material.dart';

import 'list_images.dart';

class SliderImg extends StatelessWidget {
  const SliderImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 225,
      top: 300,
      child: Opacity(
        opacity: 0.60,
        child: Container(
          width: 400,
          height: 80,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Stack(
            children: [
              ListImages(),
            ],
          ),
        ),
      ),

    );
  }
}
