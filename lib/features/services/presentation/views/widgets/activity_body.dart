import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/activities_container.dart';

class ActivityBody extends StatefulWidget {
  const ActivityBody({Key? key}) : super(key: key);

  @override
  State<ActivityBody> createState() => _ActivityBodyState();
}

class _ActivityBodyState extends State<ActivityBody> {
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: MediaQuery.of(context).size.height/40,
          crossAxisSpacing: MediaQuery.of(context).size.height/40,
          childAspectRatio: .9,
          crossAxisCount: 2,), itemBuilder: (context,index)=>ActivitiesContainr(index: index%3,));
  }
}
