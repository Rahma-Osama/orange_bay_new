import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {

    print(_currentIndex);
    return SalomonBottomBar(

      backgroundColor: Colors.white,
      currentIndex: _currentIndex,
      onTap: (i) => setState(() {
        _currentIndex = i; print(i);
      print(_currentIndex);
      }),
      items: [
        /// Home
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
          selectedColor: MAIN_ORANGE,
        ),

        /// Likes
        SalomonBottomBarItem(
          icon: Icon(Icons.calendar_today_rounded),
          title: Text("Calendar"),
          selectedColor: MAIN_ORANGE,        ),

        /// Search
        SalomonBottomBarItem(
          icon: Icon(Icons.favorite_border_rounded),
          title: Text("Favorites"),
          selectedColor: MAIN_ORANGE,        ),

        /// Profile
        SalomonBottomBarItem(
          icon: Icon(Icons.more_horiz),
          title: Text("Info"),
          selectedColor: MAIN_ORANGE,
        ),
      ],
    );
  }
}
