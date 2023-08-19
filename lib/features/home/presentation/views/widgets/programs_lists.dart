import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/utilities/widgets/animation.dart';
import 'package:orange_bay_new/features/home/presentation/views/widgets/program_container.dart';
import 'package:orange_bay_new/features/program/presentation/views/program_layout.dart';

class Programs extends StatefulWidget {
  final AnimationController animationController;
  const Programs({Key? key, required this.animationController}) : super(key: key);

  @override
  State<Programs> createState() => _ProgramsState();
}

class _ProgramsState extends State<Programs>  with TickerProviderStateMixin{
  AnimationController? animationController;
  @override
  void initState() {
    animationController = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);
    super.initState();
  }


  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BottomTopMoveAnimationView(

      animationController: animationController!,
      child: SizedBox(
          height: MediaQuery.of(context).size.height * .37,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
              scrollDirection:Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              var count =  3;
            var animation = Tween(begin: 0.0, end: 1.0).animate(
             CurvedAnimation(
            parent: animationController!,
            curve: Interval((1 / count) * index, 1.0,
                curve: Curves.fastOutSlowIn)));
             animationController?.forward();
             return GestureDetector(
             onTap: () =>
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProgramLayout())),
              child: ProgramContainer(
                animation: animation,
                animationController: animationController!,
              ));

    }
    ),
    )
    );
  }
}
