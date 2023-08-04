import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/program_container.dart';
class WishListBody extends StatelessWidget {
  const WishListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ListView.builder(itemBuilder: (context,index)=>Stack(children: [
        ProgramContainer(whishScreen: true,),
      Padding(
        padding:  EdgeInsets.all(MediaQuery.of(context).size.width/20),
        child: Align(alignment:Alignment.topRight,child: CircleAvatar(backgroundColor:Colors.white,child: Icon(Icons.favorite,color: Colors.red,))),
      )
      ]),itemCount: 10,),
    );
  }

}
