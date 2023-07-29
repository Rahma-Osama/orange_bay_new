import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/program_container.dart';
class Programs extends StatelessWidget {
  const Programs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height*.4,child: ListView.builder(itemCount:3,itemBuilder: (context,index)=>ProgramContainer(),scrollDirection: Axis.horizontal,));
  }

}
