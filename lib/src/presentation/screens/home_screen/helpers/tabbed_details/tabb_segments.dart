import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'tabbed_constants.dart';
import 'tabs/education_tab.dart';
import 'tabs/experince_tan.dart';
import 'tabs/other_tab.dart';

class TabSegment extends StatelessWidget {
  const TabSegment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: TabbedConstants.titleTabs.length,
      child: Expanded(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SegmentedTabControl(
                // Customization of widget
                radius: const Radius.circular(3),
                backgroundColor: Colors.grey.shade700,
                indicatorColor: Colors.orange.shade200,
                tabTextColor: Colors.white54,
                selectedTabTextColor: Colors.white,

                squeezeIntensity: 2,
                height: 45,
                tabPadding: const EdgeInsets.symmetric(horizontal: 2),
                textStyle: Theme.of(context).textTheme.subtitle1,
                // Options for selection
                // All specified values will override the [SegmentedTabControl] setting
                tabs: [
                  for (var i = 0; i < TabbedConstants.titleTabs.length; i++)
                    SegmentTab(
                      label: TabbedConstants.titleTabs[i].title,
                      // For example, this overrides [indicatorColor] from [SegmentedTabControl]
                      color: Colors.indigo,
                      // backgroundColor: AppColor.vulcan,
                    ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ExperinceTab(),
                  EducationTab(),
                  OtherTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
