import 'package:flutter/material.dart';
import 'package:profile_ui/src/presentation/screens/details_screen/details_screen.dart';
import 'package:profile_ui/src/presentation/screens/details_screen/helpers/code_skills.dart';
import 'package:profile_ui/src/presentation/screens/home_screen/helpers/tabbed_details/tile_widget.dart';

class OtherTab extends StatelessWidget {
  const OtherTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TileWidget(
            count: "",
            title: "My Skills",
            subtitle: "Know My Developer Skills",
            onPressTile: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => DetailsScreen(
                        listSkills: SkillConstants.codeSkills,
                      )));
            },
          ),
          TileWidget(
            count: "",
            title: "Languages",
            subtitle: "Languages Known",
            onPressTile: () {
               Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => DetailsScreen(
                        listSkills: SkillConstants.langSkills,
                      )));
            },
          ),
        ],
      ),
    );
  }
}
