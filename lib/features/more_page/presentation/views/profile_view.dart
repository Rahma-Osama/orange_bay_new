import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:orange_bay_new/core/shred_widgets/app_bar3.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/widgets/header.dart';
import 'package:orange_bay_new/features/more_page/presentation/views/widgets/profile_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBarButtom3(text: 'My Profile',),
        body: HeaderText(),
      ),
    );
  }
}
