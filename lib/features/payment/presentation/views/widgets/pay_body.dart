import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/home/presentation/views/home_layout.dart';

import '../../../../../constants.dart';
import '../../../../../core/shred_widgets/custom_button.dart';
import '../../../../../core/utilities/styles.dart';

class PayBody extends StatelessWidget {
  const PayBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: Column(
            children: [
              Image(image: AssetImage('assets/images/pngegg (81).png')),
              Text(
                  'Classic Program',
              ),
              Text(
                  'Cancellation Deadline: 10/3/2023'
              ),
              Row(
                children: [
                  Text('Date'),
                  Text('2/3/2022 at 18:00'),
                ],
              ),
              Row(
                children: [
                  Text('Date'),
                  Text('2/3/2022 at 18:00'),
                ],
              ),
              Row(
                children: [
                  Text('Date'),
                  Text('2/3/2022 at 18:00'),
                ],
              ),
              Text(
                'Additional Services',
                style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Boot X2',
                    style: Styles.TextStyle16.copyWith(fontWeight: FontWeight.w600 , color: Colors.black),
                  ),
                  const SizedBox(width: 35),
                  Text(
                    '500 EGP',
                    style: Styles.TextStyle16.copyWith(fontWeight: FontWeight.w600 , color: Colors.black),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: Styles.TextStyle16.copyWith(fontWeight: FontWeight.w600 , color: Colors.black),
                  ),
                  const SizedBox(width: 35),
                  Text(
                    '750 EGP',
                    style: Styles.TextStyle16.copyWith(fontWeight: FontWeight.w600 , color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
        CustomButton(
          width: double.infinity,
          backgroundColor: MAIN_ORANGE,
          text: 'Confirm',
          func: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeLayout()));
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: CustomButton(
            textColor: MAIN_ORANGE,
            backgroundColor: Colors.white,
            text: 'Back',
            func: (){
              Navigator.pop(context);
            },
            width:double.infinity,
          ),
        ),
      ],
    );
  }
}
