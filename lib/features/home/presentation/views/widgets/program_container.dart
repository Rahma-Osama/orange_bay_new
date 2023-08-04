import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/core/utilities/styles.dart';
class ProgramContainer extends StatelessWidget {
  bool whishScreen = false;
   ProgramContainer({Key? key, this.whishScreen=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            whishScreen? SizedBox(child: Image.asset('assets/images/img_1.png',fit: BoxFit.fitWidth,)) : SizedBox(height: MediaQuery.of(context).size.height/4.5,child: Image.asset('assets/images/img_1.png',fit: BoxFit.fitWidth,)),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/60,left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Go Island",style: Styles.TextStyle16,),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.star,color: MAIN_ORANGE,),
                        Text("4.7",style: Styles.TextStyle12,),
                        Text('(92)',style: Styles.TextStyle12.copyWith(color: GREY),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
              child: Row(children: [
                Text("Starting from ", style: Styles.TextStyle12.copyWith(fontWeight: FontWeight.w400),),
                Text("1000 EGP per person",style: Styles.TextStyle14,)
              ],),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,bottom: 8),
              child: Row(children: [
                Text("Starting from ", style: Styles.TextStyle12.copyWith(fontWeight: FontWeight.w400),),
                Text("700 EGP per child",style: Styles.TextStyle14,)
              ],),
            )
          ],
        ),
      ),
    );
  }
}
