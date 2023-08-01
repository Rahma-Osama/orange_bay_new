import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/utilities/styles.dart';

class PayMethod extends StatelessWidget {
  const PayMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Container(
        decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.elliptical(3, 3)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Set the shadow color
              spreadRadius: 2, // Set the spread radius of the shadow
              blurRadius: 6, // Set the blur radius of the shadow
              offset: Offset(0, 3), // Set the offset of the shadow
            ),
          ],
        ),
        child: Image(image: AssetImage('assets/images/pngegg (59).png'),),
      ),
        Container(
          decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.elliptical(3, 3)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Set the shadow color
                spreadRadius: 2, // Set the spread radius of the shadow
                blurRadius: 6, // Set the blur radius of the shadow
                offset: Offset(0, 3), // Set the offset of the shadow
              ),
            ],
          ),
          child: Image(image: AssetImage('assets/images/pngegg (60).png'),),
        ),
        Container(
          decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.elliptical(3, 3)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Set the shadow color
                spreadRadius: 2, // Set the spread radius of the shadow
                blurRadius: 6, // Set the blur radius of the shadow
                offset: Offset(0, 3), // Set the offset of the shadow
              ),
            ],
          ),
          child: Text(
            'Cash',
            style: Styles.TextStyle16,
          ),
        ),
      ],
    );
  }
}
