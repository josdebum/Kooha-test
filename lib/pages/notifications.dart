import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kooha_test/core/constants/color_constant.dart';
import 'package:kooha_test/core/utils/size_config/extensions.dart';
import 'package:kooha_test/core/utils/size_config/size_config.dart';
import 'package:kooha_test/core/utils/widget_extension.dart';
import 'package:kooha_test/pages/nav_bar.dart';
import 'package:kooha_test/widgets/notification2_container.dart';
import 'package:kooha_test/widgets/notification3_container.dart';
import 'package:kooha_test/widgets/notification_container.dart';
import 'package:kooha_test/widgets/updates2_container.dart';
import 'package:kooha_test/widgets/updates_container.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        appBar: AppBar(
            backgroundColor: kBlack3,
            elevation: 0,
            toolbarHeight: 50.h,
            leadingWidth: 80.w,
            leading: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return NavigationWidget();
                  }));
                },
                child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: SvgPicture.asset("assets/svgs/navigation.svg"))),
            centerTitle: true,
            title: const Text("Notifications",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Satoshi",
                    fontWeight: FontWeight.w500,
                    color: kWhite2))),
        backgroundColor: kBlack3,
        body: Scaffold(
            backgroundColor: kBlack3,
            body: SafeArea(
              child: DefaultTabController(
                length: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 24.h),
                    ButtonsTabBar(
                      buttonMargin: const EdgeInsets.only(
                          right: 8, top: 4, bottom: 4, left: 8),
                      radius: 30,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: kGoldenYellow),

                      //backgroundColor: kGoldenYellow,
                      unselectedBackgroundColor: kTextGrey2,
                      unselectedLabelStyle: const TextStyle(color: kTextGrey),
                      labelStyle: const TextStyle(
                          color: kBlack3,
                          fontFamily: "Satoshi",
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                      tabs: const [
                        Tab(
                          //icon: Icon(Icons.directions_car),
                          text: "All",
                        ),
                        Tab(
                          // icon: Icon(Icons.directions_transit),
                          text: "Activity",
                        ),
                        Tab(text: "Updates"
                            //icon: Icon(Icons.directions_bike)

                            ),
                      ],
                    ).addHeight(18.h),
                    const Divider(
                      thickness: 0.5,
                      color: kTextGrey3,
                    ).addHeight(24.h),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          notifications(),
                          const Center(
                              child: Text(
                            "No Notification",
                            style: TextStyle(
                                color: kWhite2,
                                fontFamily: "Satoshi",
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )),
                          const Center(
                              child: Text(
                            "No Notification",
                            style: TextStyle(
                                color: kWhite2,
                                fontFamily: "Satoshi",
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }

  Widget notifications() {
    return SingleChildScrollView(
        child: Container(
            color: kBlack3,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(children: <Widget>[
                  //SizedBox(height: 24.h),
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Today",
                        style: TextStyle(
                            fontFamily: "Satoshi",
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: kTextGrey3),
                      )).addHeight(24.h),

                  const UpdateContainer(),
                  const Divider(
                    color: kTextGrey3,
                    thickness: 0.5,
                  ),

                  const NotificationContainer(),
                  const Divider(
                    color: kTextGrey3,
                    thickness: 0.5,
                  ),
                  const Notification2Container(),
                  const Divider(
                    color: kTextGrey3,
                    thickness: 0.5,
                  ),
                  const Update2Container(),
                  const Divider(
                    color: kTextGrey3,
                    thickness: 0.5,
                  ).addHeight(24.h),

                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Yesterday",
                        style: TextStyle(
                            fontFamily: "Satoshi",
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: kTextGrey3),
                      )),
                  const Notification3Container(),
                ]))));
  }
}
