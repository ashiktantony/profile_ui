import 'package:flutter/material.dart';
import 'package:profile_ui/src/presentation/common/utils.dart';

import '../tile_widget.dart';

class EducationTab extends StatelessWidget {
  const EducationTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TileWidget(
            count: "1.",
            title: "B.Tech in Electronics And Communication Engineering",
            subtitle: "@ SCMS College of Engineering And Technology",
            onPressTile: () {
              dialogMtd(
                context,
                date: "07/2013 - 05/2017",
                desc: """
1.Passed in First Class with Honors and GPA 8.4/10.
""",
                place: "Ernakulam",
                title: "B.Tech in Electronics And Communication Engineering",
                workAt: "@ SCMS College of Engineering And Technology",
              ).show();
            },
          ),
          TileWidget(
            count: "2.",
            title: "Higher Secondary Education",
            subtitle: "@ St Antony’s HSS,Pudukkad",
            onPressTile: () {
              dialogMtd(
                context,
                date: "07/2011 - 03/2013",
                desc: """
1.Passed in First Class with 96%.
""",
                place: "Thrissur",
                title: "Higher Secondary Education",
                workAt: "@ St Antony’s HSS,Pudukkad",
              ).show();
            },
          ),
            ],
      ),
    );
  }
}
