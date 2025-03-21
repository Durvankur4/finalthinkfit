import 'package:flutter/material.dart';
import 'package:healtho_gym/common/color_extension.dart';
import 'package:healtho_gym/screen/home/top_tab_view/trainer/trainer_profile_screen.dart';
import 'package:healtho_gym/screen/home/top_tab_view/trainer/trainer_row.dart';

class DieticianTabScreen extends StatefulWidget {
  const DieticianTabScreen({super.key});

  @override
  State<DieticianTabScreen> createState() => _DieticianTabScreenState();
}

class _DieticianTabScreenState extends State<DieticianTabScreen> {
  List listArr = [
    {
      "name": "Sam Thakur",
      "detail": "Physiotheraphy",
      "image": "assets/img/t1.png",
      "rate": 3.0,
      "location": "Mumbai"
    },
    {
      "name": "Ashish Chavan ",
      "detail": "Weight Gain",
      "image": "assets/img/t2.png",
      "rate": 1.0,
      "location": "Nagpur"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        itemBuilder: (context, index) {
          return TrainerRow(
            obj: listArr[index],
            onPressed: () {
              context.push(
                const TrainerProfileScreen(
                  isTrainer: false,
                ),
              );
            },
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 15,
        ),
        itemCount: listArr.length,
      ),
    );
  }
}
