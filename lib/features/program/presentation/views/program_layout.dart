import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/utilities/styles.dart';
import 'package:orange_bay_new/features/program/presentation/views/widgets/overview.dart';
import 'package:orange_bay_new/features/program/presentation/views/widgets/programs.dart';
import 'package:orange_bay_new/features/program/presentation/views/widgets/reviews.dart';

import '../../../../constants.dart';
class ProgramLayout extends StatefulWidget {
  const ProgramLayout({Key? key}) : super(key: key);

  @override
  State<ProgramLayout> createState() => _ProgramLayoutState();
}

class _ProgramLayoutState extends State<ProgramLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar() ,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(height: MediaQuery.of(context).size.height/3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Go Island Program',style: Styles.TextStyle18,),
                  Row(
                    children: [
                      Icon(Icons.star,color: MAIN_ORANGE,),
                      Text("4.7",style: Styles.TextStyle12.copyWith(color: MAIN_ORANGE),),
                      Text('(92)',style: Styles.TextStyle12.copyWith(color: GREY),)
                    ],
                  ),
            ],
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/40,left: 16 ),
                height: MediaQuery.of(context).size.height/20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context , index)=>GestureDetector(
                      onTap: (){
                        setState(() {
                          programDetailsIsSelected=[false,false,false];
                          programDetailsIsSelected[index]=true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: programDetailsIsSelected[index]?BorderRadius.circular(10):BorderRadius.circular(0),
                          color: programDetailsIsSelected[index]?MAIN_ORANGE : Colors.white,

                        ),
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width*.3,
                          child :Text(programDetails[index], style: TextStyle(color: programDetailsIsSelected[index]?Colors.white : Colors.black),)
                      ),
                    )),
              ),
              programDetailsIsSelected[0]?Overview(): programDetailsIsSelected[1]?ProgramsDetails() : Reviews(),


            ],
          ),
        ),
      ),
    );
  }
}
