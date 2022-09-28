import 'dart:math';

import 'package:flutter/material.dart';
import 'package:profile_ui/src/domain/models/skill_set_model.dart';
import 'package:profile_ui/src/presentation/common/utils.dart';

class DetailsScreen extends StatelessWidget {
  final List<SkillSetModel> listSkills;
  const DetailsScreen({Key? key, required this.listSkills}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: textWidget(
            title: "SkillsSet",
            size: 18,
            weight: FontWeight.bold,
            color: Colors.white),
      ),
      body: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) => const Divider(
          thickness: 1,
          endIndent: 20,
          indent: 20,
          color: Colors.grey,
        ),

        // physics: const NeverScrollableScrollPhysics(),
        itemCount: listSkills.length,
        itemBuilder: (context, i) => ListTile(
          title: textWidget(
              title: listSkills[i].title,
              size: 20,
              weight: FontWeight.bold,
              color: Colors.white),
              contentPadding: const EdgeInsets.symmetric(horizontal:12,vertical: 10),
          subtitle: Slider(
            thumbColor:
                Colors.primaries[Random().nextInt(Colors.primaries.length)],
            value: listSkills[i].level,
            max: 10,
            onChanged: (_) {},
            divisions:10,
            // min: 0,
            label: listSkills[i].label,
            inactiveColor: Colors.white,
            activeColor:
                Colors.primaries[Random().nextInt(Colors.primaries.length)],
          ),
        ),
      ),
    );
  }
}

//  for (int i = 0; i < listSkills.length; ++i)
//               ListTile(
//                 title: textWidget(
//                     title: listSkills[i].title,
//                     size: 20,
//                     weight: FontWeight.bold,
//                     color: Colors.white),
//                 subtitle: Slider(
//                   thumbColor: Colors
//                       .primaries[Random().nextInt(Colors.primaries.length)],
//                   value: listSkills[i].level,
//                   max: 10,
//                   onChanged: (_) {},
//                   divisions: 10,
//                   min: 0,
//                   label: listSkills[i].label,
//                   inactiveColor: Colors.white,
//                   activeColor: Colors
//                       .primaries[Random().nextInt(Colors.primaries.length)],
//                 ),
//               ),
            