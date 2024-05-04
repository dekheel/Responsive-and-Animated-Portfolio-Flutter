import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/functions.dart';
import 'package:flutter_svg/svg.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residence",
                      text: "Egypt",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Alexandria",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: MyFunctions.getMyAge(),
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    // Knowledges(),
                    // Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {
                        MyFunctions.launchingUrl(
                            "https://drive.usercontent.google.com/uc?id=1XbeAYg9FZRlDyqgJgSqCelmFsZtxNkyl&export=download");
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DownLoad My CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              MyFunctions.launchingUrl(
                                  "https://www.linkedin.com/public-profile/settings?trk=d_flagship3_profile_self_view_public_profile");
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              MyFunctions.launchingUrl(
                                  "https://github.com/dekheel/");
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
