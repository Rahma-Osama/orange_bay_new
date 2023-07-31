import 'package:flutter/material.dart';

import '../../../../../core/utilities/styles.dart';

class SecondContainer extends StatefulWidget {
  const SecondContainer({Key? key}) : super(key: key);

  @override
  State<SecondContainer> createState() => _SecondContainerState();
}

class _SecondContainerState extends State<SecondContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 300,
          padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'When are you going?',
              style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w400,),
            ),
            Row(
              children: [

              ],
            ),
            Row(
              children: [

              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}
