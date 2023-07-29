import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/shred_widgets/app_bar.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/home_body.dart';

import '../../../../core/shred_widgets/bottom_nav_bar.dart';
class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(context: context) ,
      bottomNavigationBar:Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width/40)

    ),
        margin:  EdgeInsets.all(MediaQuery.of(context).size.width/20),
        child: BottomNavBar(),
      ) ,
      body: HomeBody(),
    );
  }
}
