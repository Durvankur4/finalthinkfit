import 'package:flutter/material.dart';
import 'package:healtho_gym/common/color_extension.dart';
import 'package:healtho_gym/screen/home/top_tab_view/health_tip/health_tip_details_screen.dart';
import 'package:healtho_gym/screen/home/top_tab_view/health_tip/health_tip_row.dart';

class HealthTipScreen extends StatefulWidget {
  const HealthTipScreen({super.key});

  @override
  State<HealthTipScreen> createState() => _HealthTipScreenState();
}

class _HealthTipScreenState extends State<HealthTipScreen> {
  List listArr = [
    {
      "title": "Waight gain is not the Primary Goal ",
      "subtitle":
          "Focusing on the Weight gain and neglecting the exercise is not optimized for gains..",
      "image": "assets/img/home_1.png",
    },
    {
      "title": "Garlic is injurous to health.. ",
      "subtitle":
          "Garlic is the plant in the onion family that's grown alternate between  or more exercise..",
      "image": "assets/img/home_2.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          itemBuilder: (context, index) {
            var obj = listArr[index] as Map? ?? {};
            return HealthTipRow(
              obj: obj,
              onPressed: () {
                context.push(const HealthTipDetailScreen());
              },
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
          itemCount: listArr.length),
    );
  }
}
