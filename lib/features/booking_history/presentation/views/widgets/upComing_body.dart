import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/shred_widgets/custom_button.dart';


import '../../../../../constants.dart';

import 'container.dart';

class UpcomingBody extends StatelessWidget {
  const UpcomingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
       Container(
      decoration:  BoxDecoration(
      color: Colors.white,
        borderRadius: BorderRadius.circular(10),
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
             ContainerBody(),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 children: [
                   Expanded(
                     child: CustomButton(
                       backgroundColor: MAIN_ORANGE,
                       text: 'Edit',
                       func: (){},
                     ),
                   ),
                   Expanded(
                     child: CustomButton(
                       backgroundColor: Colors.white,
                       textColor: MAIN_ORANGE,
                       text: 'Print',
                       func: (){},
                     ),
                   ),
                   Expanded(
                     child: CustomButton(
                       backgroundColor: Color(0xFFE72C2C),
                       text: 'Cancel',
                       func: (){},
                     ),
                   ),
                 ],
               ),
             ),
           ],
         ),
      ),
          Container(
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
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
                  ContainerBody(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            backgroundColor: MAIN_ORANGE,
                            text: 'Edit',
                            func: (){},
                          ),
                        ),
                        Expanded(
                          child: CustomButton(
                            backgroundColor: Colors.white,
                            textColor: MAIN_ORANGE,
                            text: 'Print',
                            func: (){},
                          ),
                        ),
                        Expanded(
                          child: CustomButton(
                            backgroundColor: Color(0xFFE72C2C),
                            text: 'Cancel',
                            func: (){},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),

        ],
      ),
    );
  }
}
