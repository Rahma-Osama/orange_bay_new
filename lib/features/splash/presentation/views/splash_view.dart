import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/splash/presentation/views/widgets/splash_body.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashBody(),
    );
  }
}
