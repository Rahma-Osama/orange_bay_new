import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/shred_widgets/custom_button.dart';
import 'container_text.dart';

class SecurityBody extends StatefulWidget {
  const SecurityBody({Key? key}) : super(key: key);

  @override
  State<SecurityBody> createState() => _SecurityBodyState();
}

class _SecurityBodyState extends State<SecurityBody> {
  bool isPasswordVisible2 = false;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          ContainerProfile(
            type: TextInputType.text,
            text: 'Current Password',
            suffix: isPasswordVisible2 ? Icons.visibility : Icons.visibility_off,
            pressed: () {
              setState(() {
                isPasswordVisible2 = !isPasswordVisible2;
              });
            },

          ),
          Divider(),
          ContainerProfile(
            type: TextInputType.text,
            text: 'New Password',
            suffix: isPasswordVisible2 ? Icons.visibility : Icons.visibility_off,
            pressed: () {
              setState(() {
                isPasswordVisible2 = !isPasswordVisible2;
              });
            },

          ),
          ContainerProfile(
            type: TextInputType.text,
            text: 'Confirm Password',
            suffix: isPasswordVisible2 ? Icons.visibility : Icons.visibility_off,
            pressed: () {
              setState(() {
                isPasswordVisible2 = !isPasswordVisible2;
              });
            },

          ),
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: CustomButton(
                backgroundColor: MAIN_ORANGE,
                text: 'update',
                func: (){},
                width:double.infinity
            ),
          ),
        ],
      ),
    );
  }
}
