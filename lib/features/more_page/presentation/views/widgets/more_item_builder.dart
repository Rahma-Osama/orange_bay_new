import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/More_view.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/profile_view.dart';

import '../wishlist_view.dart';
class MoreItemBuilder extends StatelessWidget {
  final index;
   MoreItemBuilder({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>index<2?Navigator.push(context, MaterialPageRoute(builder: (context)=>screens[index])):null,
      child: Container(
        height: MediaQuery.of(context).size.height/15,
        color: Colors.white,
       child : Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(headers[index],style: TextStyle(color: index==4?Colors.red: BLACK),),
            Icon(Icons.arrow_forward_ios,color: GREY,)
          ],

        )
      ),
    );
  }

  List headers=["My PROFILE","My WISHLIST","About Us","Contact US","Logout"];
  List screens=[
    ProfileView(),
    WishListView(),
  ];
}
