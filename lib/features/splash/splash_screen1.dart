import 'dart:async';
import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/home/presentation/views/home_layout.dart';
import '../../core/utilities/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _currentPage = 0;

  late Timer _timer;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        setState(() {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeLayout()));
        });
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new AssetImage(AssetData.splash[0]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new AssetImage(AssetData.splash[1]),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new AssetImage(AssetData.splash[2]),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
  }
