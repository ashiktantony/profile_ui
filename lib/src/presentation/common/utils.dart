import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

double screenWidth(context) => MediaQuery.of(context).size.width;
double screenHeight(context) => MediaQuery.of(context).size.height;
SizedBox heightWidget({required double height}) {
  return SizedBox(
    height: height,
  );
}

Text textWidget(
    {required String title,
    required double size,
    required FontWeight weight,
    required Color color}) {
  return Text(
    title,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: weight,
    ),
  );
}

Padding headerMtd(
    {required String title,
    }) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: textWidget(
      title: title,
      color: Colors.white,
      size: 28,
      weight: FontWeight.w800,
    ),
  );
}
AwesomeDialog dialogMtd(
  BuildContext context, {
  required String place,
  required String date,
  required String desc,
  required String title,
  required String workAt,
}) {
  return AwesomeDialog(
    context: context,
    animType: AnimType.scale,
    dialogType: DialogType.info,
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textWidget(
                title: title,
                size: 20,
                weight: FontWeight.bold,
                color: Colors.black),
            textWidget(
                title: "@ $workAt",
                size: 18,
                weight: FontWeight.w400,
                color: Colors.black54),
            Wrap(
              children: [
                textWidget(
                    title: "Period : $date",
                    size: 16,
                    weight: FontWeight.w400,
                    color: Colors.black54),
                textWidget(
                    title: "🌍 $place",
                    size: 16,
                    weight: FontWeight.w400,
                    color: Colors.black87),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: textWidget(
                  title: desc,
                  size: 16,
                  weight: FontWeight.normal,
                  color: Colors.black87),
            )
          ],
        ),
      ),
    ),
  );
}
snackBarFn(
    {required BuildContext context,
    required String title,
    required bool isAdded}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(color: Colors.white),
      ),
      behavior: SnackBarBehavior.floating,
      elevation: 10,
      padding: const EdgeInsets.all(12),
      backgroundColor:
          isAdded ? Colors.green.withOpacity(.8) : Colors.red.withOpacity(.8),
      dismissDirection: DismissDirection.startToEnd,
      shape: const StadiumBorder(),
      duration: const Duration(seconds: 3),
    ),
  );
}
