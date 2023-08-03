import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/shred_widgets/custom_button.dart';
import 'package:orange_bay_new/core/shred_widgets/default_text.dart';
import 'package:orange_bay_new/core/shred_widgets/profile_text.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/profile_view.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/widgets/header.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/widgets/security_body.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilities/styles.dart';
import '../security_view.dart';
import 'container_text.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
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
            profileText[0]
                ? ProfileBody()
                : profileText[1]
                ? SecurityBody()
                : SizedBox(),
             ContainerProfile(
              type: TextInputType.text,
              text: 'First Name',
            ),
             ContainerProfile(
              type: TextInputType.text,
              text: 'Last Name',
            ),
             ContainerProfile(
              type: TextInputType.emailAddress,
              text: 'Email Address',
            ),
             ContainerProfile(
              type: TextInputType.number,
              text: 'Phone Number',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                  backgroundColor: MAIN_ORANGE,
                  text: 'update',
                  func: (){},
                  width:double.infinity
              ),
            ),
          ],
        ),
      ),
    );
  }
}
