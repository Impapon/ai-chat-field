import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomStepper extends StatelessWidget {
  final int stepperCount;
  const CustomStepper({Key? key, required this.stepperCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(stepperCount, (index) {
        return stepperCount == 1?CircleAvatar(backgroundColor: greyColor,radius: 5):Column(
          children: [
            CircleAvatar(backgroundColor: greyColor,radius: 5),
            index < stepperCount -1?Container(
              color: greyColor,
              height: 12,
              width: 2,
            ):const SizedBox()
          ],
        );
      }),
    );
  }
}
