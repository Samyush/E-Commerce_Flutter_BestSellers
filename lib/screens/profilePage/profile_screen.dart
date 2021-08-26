import 'dart:io';

import 'package:best_sellers/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../constants.dart';
import 'Components/profileConstants.dart';
import 'Components/profile_list_item.dart';

class ProfilePage extends StatelessWidget {
  static String routeName = "/profile";
  final File imageFile;

  ProfilePage({this.imageFile});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);

    var profileInfo = Expanded(
      child: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: 80.0,
                  backgroundImage: imageFile == null
                      ? AssetImage("assets/images/Profile Image.png")
                      : FileImage(File(imageFile.path)),
                ),
                Positioned(
                  right: 20.0,
                  bottom: 20.0,
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: ((builder) =>
                              SignUpFormState().bottomSheet()));
                    },
                    child: Icon(
                      Icons.camera_alt,
                      color: kPrimaryColor,
                      size: 28.0,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: kSpacingUnit.w * 2),
          Text(
            'User 1',
            style: kTitleTextStyle,
          ),
          SizedBox(height: kSpacingUnit.w * 0.5),
          Text(
            'user1@email.com',
            style: kCaptionTextStyle,
          ),
          SizedBox(height: kSpacingUnit.w * 2),
          Container(
            height: kSpacingUnit.w * 4,
            width: kSpacingUnit.w * 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kSpacingUnit.w * 3),
              // color: Theme.of(context).accentColor,
              color: Colors.amber,
            ),
            child: Center(
              child: Text(
                'Verified',
                style: kButtonTextStyle,
              ),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: kSpacingUnit.w * 5),
          profileInfo,
          Expanded(
            child: ListView(
              children: <Widget>[
                ProfileListItem(
                  icon: LineAwesomeIcons.user_shield,
                  text: 'Privacy',
                ),
                ProfileListItem(
                  icon: LineAwesomeIcons.history,
                  text: 'Purchase History',
                ),
                ProfileListItem(
                  icon: LineAwesomeIcons.question_circle,
                  text: 'Help & Support',
                ),
                ProfileListItem(
                  icon: LineAwesomeIcons.cog,
                  text: 'Settings',
                ),
                ProfileListItem(
                  icon: LineAwesomeIcons.alternate_sign_out,
                  text: 'Logout',
                  hasNavigation: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
