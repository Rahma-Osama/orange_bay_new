import 'package:flutter/material.dart';

import '../../../../../core/utilities/styles.dart';
import 'animation.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:10,vertical: MediaQuery.of(context).size.height/40),
      child: Container(
        height: MediaQuery.of(context).size.height *.35,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Overview',
                style: Styles.TextStyle14,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFFEDEC),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Image.asset('assets/images/Clock 03.png'),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Text(
                          'Duration',
                        style: TextStyle(
                          color: Color(0xFF969696),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          height: 1,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        '12 Hours',
                        style: Styles.TextStyle14.copyWith( fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(width: 30,),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFFEDEC),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Image.asset('assets/images/Location View in-lc.png'),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                          color: Color(0xFF969696),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          height: 1,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Country, city' ,
                        style: Styles.TextStyle14.copyWith( fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              LetterByLetterText(
                text:
                "Orange bay is a dream come true, you will feel as if you are a part of these portraits on the travel magazines. The old looking long wooden pier that leads you to the white soft sandy beaches, the gradual changing of water from dark blue to light turquoise, the swing stands in the middle of the shallow water, all in one big frame. Capture the moment, pick your beanbag, and relax on this magical beach.",
                duration: Duration(seconds: 4), // Duration of the animation
              ),
            ],
          ),
        ),
      ),
    );
  }
}
