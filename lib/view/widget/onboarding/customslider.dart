import 'package:ecommercecourse/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Text(
            onBoardingList[i].title!,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 120,
          ),
          Image.asset(
            onBoardingList[i].image!,
            width: 250,
            height: 270,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 120,
          ),
          Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardingList[i].body!,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}
