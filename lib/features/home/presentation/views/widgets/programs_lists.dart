import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/program_container.dart';
import 'package:orange_bay_new/features/program/presentation/views/program_layout.dart';
class Programs extends StatelessWidget {
  const Programs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height*.37,child: ListView.builder(itemCount:3,itemBuilder: (context,index)=>GestureDetector(onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProgramLayout())),child: ProgramContainer()),scrollDirection: Axis.horizontal,));
  }

}
