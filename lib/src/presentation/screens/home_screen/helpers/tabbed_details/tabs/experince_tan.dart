import 'dart:developer';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:profile_ui/src/presentation/common/utils.dart';

import '../tile_widget.dart';

class ExperinceTab extends StatelessWidget {
  const ExperinceTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TileWidget(
            count: "1.",
            title: "Junior Software Developer",
            subtitle: "@ Miltek Technologies Pvt Ltd",
            onPressTile: () {
              dialogMtd(
                context,
                date: "02/2020 - Ongoing",
                desc: """
1. Planned and developed interfaces that simplified overall management and offered
ease of use.
2. Designed customized solutions for proposals to potential customers.
3. Developed software for Android mobile operating systems based on Flutter with and without API integration.
4. Participated in software field testing to verify performance of developed projects.
5. Developed experience with Flutter, React JS, PyQt and Python.
6. Provided guidance and mentored less-experienced staff members.duino and PIC Microcontrollers.""",
                place: "Thiruvanathapuram",
                title: "Junior Software Developer",
                workAt: "Miltek Technologies Pvt Ltd",
              ).show();
            },
          ),
          TileWidget(
            count: "2.",
            title: "Graduate Apprentice Trainee",
            subtitle: "@ Liquid Propulsion Systems Centre (LPSC)-ISRO",
            onPressTile: () {
              dialogMtd(
                context,
                date: "02/2018 - 02/2019",
                desc: """
1. Kept neat, organized records for completed work.
2. Worked with team members to refine task workflows for greater productivity.
3. Read and interpreted documents for standard operating procedures, safety rules and job-specific protocols.
4. Involved in Embedded system projects with DSPs, Arduino and PIC Microcontrollers.""",
                place: "Thiruvanathapuram",
                title: "Graduate Apprentice Trainee",
                workAt: "@ Liquid Propulsion Systems Centre (LPSC)-ISRO",
              ).show();
            },
          ),
          TileWidget(
            count: "3.",
            title: "Embedded System Programmer Trainee",
            subtitle: "@ Quest Innovative Solutions Pvt. Ltd",
            onPressTile: () {
              dialogMtd(
                context,
                date: "08/2017 - 02/2018",
                desc: """
1. IOT based Fuel Monitoring System based on Python , RaspBerry Pi,Flow Sensors.
2. Learned and accustomed with various embedded system languages like C,Python.""",
                place: "Thiruvanathapuram",
                title: "Embedded System Programmer Trainee",
                workAt: "@ Quest Innovative Solutions Pvt. Ltd",
              ).show();
            },
          ),
        ],
      ),
    );
  }
}
