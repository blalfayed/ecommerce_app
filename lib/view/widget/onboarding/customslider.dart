import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends StatelessWidget {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Text(
            onBoardingList[i].title!,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                style: const TextStyle(
                    height: 2,
                    color: AppColor.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}
