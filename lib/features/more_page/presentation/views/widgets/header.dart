import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/widgets/profile_body.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/widgets/security_body.dart';

import '../../../../../constants.dart';


class HeaderText extends StatefulWidget {
  const HeaderText({Key? key}) : super(key: key);

  @override
  State<HeaderText> createState() => _HeaderTextState();
}

class _HeaderTextState extends State<HeaderText> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          padding: EdgeInsets.all(8),
          child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        profileText = [false, false, false];
                        profileText[index] = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: profileText[index]
                            ? BorderRadius.circular(10)
                            : BorderRadius.circular(0),
                        color: profileText[index] ? MAIN_ORANGE : Colors.white,
                      ),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * .3,
                      child: Text(
                        profDetails[index],
                        style: TextStyle(
                            color: profileText[index]
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  )),
        ),
        // Expanded(
        //   child: IndexedStack(
        //     index: selectedIndex, // Show the content based on selectedIndex
        //     children: [
        //       ProfileBody(), // ProfileView or any other widget for Basic Info
        //       SecurityBody(), // SecurityView or any other widget for Security
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
