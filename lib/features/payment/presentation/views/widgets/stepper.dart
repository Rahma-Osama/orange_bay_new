import 'package:flutter/material.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({Key? key}) : super(key: key);

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  int currentstep = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          child: Stepper(
              steps: getSteps(),
            type: StepperType.horizontal,
            currentStep: currentstep,
          ),
        ),
      ],
    );
  }
}
List<Step> getSteps() => [
  Step(
      title: Text('User Data'),
      content: Container(),
  ),
  Step(
    title: Text('Payment and confirm'),
    content: Container(),
  ),
  Step(
    title: Text('Success'),
    content: Container(),
  ),
];