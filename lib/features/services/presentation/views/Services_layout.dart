import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/services/presentation/views/widgets/services_container.dart';
class ServicesLayout extends StatelessWidget {
   const ServicesLayout({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.all(16.0),
       child: GridView.builder(
           itemCount: 6,
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             mainAxisSpacing: MediaQuery.of(context).size.height/40,
             crossAxisSpacing: MediaQuery.of(context).size.height/40,
             childAspectRatio: .9,
         crossAxisCount: 2,), itemBuilder: (context,index)=>ServiceContainer(index: index,)),
     );
   }


 }
