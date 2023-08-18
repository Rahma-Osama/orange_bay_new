import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/core/utilities/assets.dart';



class SplashBody extends StatefulWidget {
  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {


  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/IMG_6497.jpg', fit: BoxFit.cover),
          ),
          Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              Center(
                child: Container(
                  // width: 60,
                  // height: 60,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                    child: Image.asset(AssetData.logo),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Welcome to Orange Bay",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),

                ),
              const SizedBox(
                height: 8,
              ),
              AnimatedOpacity(
                opacity:  1.0 ,
                duration: const Duration(milliseconds: 420),
                child: Text(
                 ("Planning your next journey with us "),
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16,color: MAIN_ORANGE , fontWeight: FontWeight.w600)
                ),
              ),
              const Expanded(
                flex: 8,
                child: SizedBox(),
              ),
            ],
          ),
        ],
      );
  }
}
