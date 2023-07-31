import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/utilities/styles.dart';

class ListImages extends StatelessWidget {
  const ListImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         Image(image: AssetImage('assets/images/img5.png')),
          Image(image: AssetImage('assets/images/img6.png')),
          Image(image: AssetImage('assets/images/img7.png')),
          Image(image: AssetImage('assets/images/img6.png')),
          Container(
            width: 62,
            height: 64,
            decoration: ShapeDecoration(
              color: const Color(0xFF0F4966),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  '+12',
                  style: Styles.TextStyle20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
