import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/features/program/presentation/views/widgets/pick_time.dart';

import '../../../../../core/utilities/styles.dart';
import '../../../../home/presentation/views/widgets/pick_date.dart';

class SecondContainer extends StatefulWidget {
  const SecondContainer({Key? key}) : super(key: key);

  @override
  State<SecondContainer> createState() => _SecondContainerState();
}

class _SecondContainerState extends State<SecondContainer> {
  int count = 0;
  // int age = 10;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          // height: 400,
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
            PickDate(),
            PickTime(),
            const SizedBox(height: 24),
            Text(
              'How many tickets?',
              style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
            // const SizedBox(height: 24),
            const SizedBox(height: 10),
            Row(
              children: [
                Image(image: AssetImage('assets/images/info.png')),
                SizedBox(width: 10 ,),
                Text(
                  'Children under 4 are free',
                  style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
         const SizedBox(height: 8),
            Row(
              children: [
                Image(image: AssetImage('assets/images/info.png')),
                SizedBox(width: 10 ,),
                Text(
                  'For a full refund, cancel at least 24 hours in advance of the start date of the experience.',
                  style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 24,),
            Divider(),
            SizedBox(height: 8,),
            Text(
              'Additional Services',
              style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Boat (250 EGP)',
                  style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w500),
                ),
                m2Expanded(context , 'weight'),
                const SizedBox(
                  width: 15.0,
                ),
              ],
            ),
            SizedBox(height: 12,),
            Text(
              'Boat cruise with a snorkeling stop',
              style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w400),
            )
          ],
      ),
      ),
      ),
    );
  }
  Expanded m2Expanded(BuildContext context, String type) {
    return Expanded(
      child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           FloatingActionButton(
             backgroundColor: MAIN_ORANGE,
             heroTag:  'count--',
             onPressed: () =>
                 setState(() => count--
                 ),
             mini: true,
             child: const Icon(Icons.remove , size: 10,),
           ),
           const SizedBox(width: 10.0),
           Text(
          '$count',
       ),
       FloatingActionButton(
         backgroundColor: MAIN_ORANGE,
             heroTag:'count++',
             onPressed: () =>
                 setState(() => count++),
             mini: true,
             child: const Icon(Icons.add),
           ),
         ],
       ),
    );
  }
}
