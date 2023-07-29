import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/programs_lists.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Top Programs in Orange Bay",style: TextStyle(color: Colors.black),),
                GestureDetector(child: Text("See all",style: TextStyle(color: MAIN_ORANGE),),)
              ],
            ),
            Programs()

          ],
        ),
      ),
    );
  }
}
