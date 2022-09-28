import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import '../../../../common/utils.dart';

class TileWidget extends StatelessWidget {
  final String count, title, subtitle;
  final VoidCallback onPressTile;
  const TileWidget({
    Key? key,
    required this.count,
    required this.title,
    required this.subtitle,
    required this.onPressTile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
      child: ListTile(
        onTap: onPressTile,
        horizontalTitleGap: 5,
        leading: textWidget(
          title: count,
          size: 16,
          weight: FontWeight.bold,
          color: Colors.white,
        ),
        minLeadingWidth: 10,
        trailing: AnimatedButton(
          width: 70,
          height: 10,
          buttonTextStyle: const TextStyle(
            // backgroundColor: Colors.blue,
            color: Colors.white,
            fontSize: 14,
          ),
          text: 'Details', borderRadius: BorderRadius.zero,
          // color: Colors.blueGrey,
          pressEvent: onPressTile,
        ),
        title: textWidget(
          title: title,
          size: 18,
          weight: FontWeight.bold,
          color: Colors.white,
        ),
        subtitle: textWidget(
          title: subtitle,
          size: 14,
          weight: FontWeight.w400,
          color: Colors.white60,
        ),
      ),
    );
  }
}
