import 'package:flutter/material.dart';
import 'package:healtho_gym/common/color_extension.dart';
import 'package:healtho_gym/screen/home/top_tab_view/trainer/trainer_profile_screen.dart';
import 'package:healtho_gym/screen/home/top_tab_view/trainer/trainer_row.dart';

class TrainerTabScreen extends StatefulWidget {
  const TrainerTabScreen({super.key});

  @override
  State<TrainerTabScreen> createState() => _TrainerTabScreenState();
}

class _TrainerTabScreenState extends State<TrainerTabScreen> {
  List listArr = [
    {
      "name": "Amar Kalambe",
      "detail": "Fitness",
      "image": "assets/img/t3.png",
      "rate": 5.0,
      "location": "Mumbai"
    },
    {
      "name": "Pawan Chutake",
      "detail": "Yapping",
      "image": "assets/img/t5.png",
      "rate": 4.0,
      "location": "Chennai"
    },
    {
      "name": "Aniket Thorat",
      "detail": "Mass gain",
      "image": "assets/img/t6.png",
      "rate": 1.0,
      "location": "Pune"
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
              context.push(const TrainerProfileScreen());
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
