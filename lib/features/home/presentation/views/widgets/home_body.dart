import 'package:flutter/material.dart';
import 'package:orange_bay_new/constants.dart';
import 'package:orange_bay_new/core/utilities/styles.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/activities_list.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/pick_date.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/programs_lists.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/search_buttom.dart';


List<String> list = <String>['ُEG','Dollar'];
class HomeBody extends StatefulWidget {
   HomeBody({Key? key}) : super(key: key);
   String dropdownValue = list.first;

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
            DropdownButton<String>(
            value: widget.dropdownValue,
            icon: const Icon(Icons.keyboard_arrow_down_outlined),

            // style: const TextStyle(color: Colors.deepPurple),
            underline: SizedBox(),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                widget.dropdownValue = value!;
              });
            },
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value,style: TextStyle(color: BLACK),),
              );
            }).toList(),
          )
                ],
              ),
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
