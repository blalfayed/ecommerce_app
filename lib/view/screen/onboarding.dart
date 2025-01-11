import 'package:flutter/material.dart';

import '../widget/onboarding/custombutton.dart';
import '../widget/onboarding/customslider.dart';
import '../widget/onboarding/dotcontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 3, child: CustomSliderOnBoarding()),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomDotControllerOnBoarding(),
                  Spacer(
                    flex: 2,
                  ),
                  CustomButtonOnBoarding(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
