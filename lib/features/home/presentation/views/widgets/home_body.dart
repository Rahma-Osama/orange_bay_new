import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/core/utilities/styles.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/activities_list.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/pick_date.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/programs_lists.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/search_buttom.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              PickDate(),
              Search(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("Top Programs in Orange Bay",style: Styles.TextStyle14,),
                  ),
                  GestureDetector(child: Text("See all",style: TextStyle(color: MAIN_ORANGE),),)
                ],
              ),
              Programs(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Today Activities",style: Styles.TextStyle14,),
                  ),
                  GestureDetector(child: Text("See all",style: TextStyle(color: MAIN_ORANGE),),)
                ],
              ),
              Activities()

            ],
          ),
        ),
      ),
    );
  }
}
