import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile_ui/src/presentation/common/utils.dart';
import 'package:profile_ui/src/presentation/screens/home_screen/helpers/tabbed_details/tabb_segments.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  _launchUrl(url, context) async {
    // Uri.encodeFull(urlString) or Uri.encodeComponent(urlString)
    // var url = Uri.parse("https://adevcoder.wordpress.com/");

    if (await launcher.canLaunchUrl(url)) {
      await launcher.launchUrl(
        url,
        mode: launcher.LaunchMode.externalApplication,
      );
    } else {
      snackBarFn(
          context: context, title: "Something Went Wrong", isAdded: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          expandedHeight: screenHeight(context) * .4,
          // floating: true,
          pinned: false,
          backgroundColor: Colors.black,
          flexibleSpace: FlexibleSpaceBar(
            background: Center(
              child: Column(
                children: [
                  heightWidget(height: 40),
                  CircleAvatar(
                    radius: 82,
                    backgroundColor: Colors.yellow.shade200,
                    child: const CircleAvatar(
                      radius: 80,
                      foregroundImage: AssetImage("assets/me.jpg"),
                    ),
                  ),
                  textWidget(
                    title: "Ashik T Antony",
                    size: 40,
                    weight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textWidget(
                    title: "Software Developer",
                    size: 24,
                    weight: FontWeight.w400,
                    color: Colors.white70,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          color: Colors.white,
                          iconSize: 35,
                          onPressed: () async {
                            var url =
                                Uri.parse("https://github.com/ashiktantony/");
                            _launchUrl(url, context);
                          },
                          icon: const Icon(
                            FontAwesomeIcons.github,
                          )),
                      IconButton(
                          color: Colors.blue,
                          iconSize: 35,
                          onPressed: () async {
                            var url =
                                Uri.parse("https://twitter.com/ashik_t_antony");
                            _launchUrl(url, context);
                          },
                          icon: const Icon(
                            FontAwesomeIcons.twitter,
                          )),
                      IconButton(
                        color: Colors.white,
                        iconSize: 35,
                        onPressed: () async {
                          var url =
                              // "tel:+919633987264";
                              Uri.parse("tel:+919633987264");
                          _launchUrl(url, context);
                        },
                        icon: const Icon(
                          Icons.phone,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate(
            (context, position) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heightWidget(height: 20),
                  headerMtd(
                    title: "About",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 4),
                    child: textWidget(
                      title:
                          "Enthusiastic IT specialist with more than 1 years of experience especially Android app development and Python.I am trying to pursue a challenging career and be a part of progressive organization, that gives a scope to enhance my knowledge and utilizing my skills towards the growth of the organization",
                      size: 20,
                      weight: FontWeight.w300,
                      color: Colors.grey,
                    ),
                  ),
                  const TabSegment()
                ],
              );
            },
            childCount: 1,
          ),
          itemExtent: screenHeight(context) *.9,
        ),
      ]),
    );
  }
}
