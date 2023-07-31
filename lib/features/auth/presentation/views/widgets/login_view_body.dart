import 'package:flutter/material.dart';


import '../../../../../core/utilities/assets.dart';
import 'auth_card.dart';

class LogInBody extends StatefulWidget {
  const LogInBody({Key? key}) : super(key: key);

  @override
  State<LogInBody> createState() => _LogInBodyState();
}

class _LogInBodyState extends State<LogInBody> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetData.kBackGround),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: SingleChildScrollView(
        child: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: deviceSize.width > 600 ? 2 : 1,
                  child: AuthCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
