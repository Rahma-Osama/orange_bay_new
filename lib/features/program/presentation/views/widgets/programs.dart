import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/core/utilities/styles.dart';
import 'package:timelines/timelines.dart';
class ProgramsDetails extends StatelessWidget {
  const ProgramsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:6,vertical: MediaQuery.of(context).size.height/40),
      child: Container(

        color: Colors.white,
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height*.4,
        child: Timeline.tileBuilder(
          theme: TimelineThemeData(
            color: MAIN_ORANGE
          ),
          builder: TimelineTileBuilder.fromStyle(
            indicatorStyle:IndicatorStyle.outlined,
            contentsAlign: ContentsAlign.basic,
            contentsBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
              child: Row(
                children: [
                  Text('8 AM',style: Styles.TextStyle14,),
                  Text('-Leaving the Marina',style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w400),)
                ],
              ),
            ),
            itemCount: 8,
          ),
        ),
      ),
    );
  }
}
