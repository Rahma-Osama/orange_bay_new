import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/core/shred_widgets/drop_down.dart';

import '../utilities/assets.dart';

 CustomAppBar({context}){
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Image.asset(AssetData.logo, height: MediaQuery
          .of(context)
          .size
          .height / 20,),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: Container(
            child: CustomDropdownButton()
        ),
      ),
      Container(
        decoration: BoxDecoration(
            color: Colors.white,
        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/40)
        ),
        padding:EdgeInsets.all(MediaQuery.of(context).size.width/20),
        alignment: Alignment.center,
        child: Stack(
          children: [
            Align(alignment: Alignment.center,child: Icon(Icons.notifications_none_outlined,color: BLACK,)),
            Positioned(top:MediaQuery.of(context).size.height/50,right:MediaQuery.of(context).size.width/200,child: CircleAvatar(backgroundColor: Color(0XFFFF4747),radius: MediaQuery.of(context).size.height/200,)),

          ],
        ),
      )
    ],
  );
}
