import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/shred_widgets/default_text.dart';
import 'package:orange_bay_new/core/shred_widgets/prodile_text.dart';

import '../../../../../constants.dart';
import '../../../../../core/utilities/styles.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            padding: EdgeInsets.all(8),
            color: Colors.white,
            child: defaultTextPro(
            type: TextInputType.text,
            hint: 'First Name',
            ),
      ),
        ],
      ),
    );
  }
}
