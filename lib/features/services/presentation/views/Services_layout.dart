import 'package:flutter/material.dart';
import 'package:orange_bay_new/features/services/presentation/views/widgets/services_container.dart';
class ServicesLayout extends StatelessWidget {
   const ServicesLayout({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 2,), itemBuilder: (context,index)=>ServiceContainer());
   }
 }
