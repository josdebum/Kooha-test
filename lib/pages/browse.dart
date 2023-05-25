import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kooha_test/core/constants/color_constant.dart';
import 'package:kooha_test/core/utils/size_config/extensions.dart';
import 'package:kooha_test/core/utils/size_config/size_config.dart';
import 'package:kooha_test/core/utils/widget_extension.dart';
import 'package:kooha_test/pages/notifications.dart';
import 'package:kooha_test/widgets/app_textfield.dart';
import 'package:kooha_test/widgets/browse_category.dart';
import 'package:kooha_test/widgets/celeb_container.dart';

class BrowseScreen extends StatefulWidget {
  const BrowseScreen({super.key});

  @override
  State<BrowseScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
  @override
  Widget build(BuildContext context) {
    const style1 = TextStyle(
        color: kTextGrey,
        fontSize: 16,
        fontFamily: "Satoshi",
        fontWeight: FontWeight.w700);
    const style2 = TextStyle(
        color: kGoldenYellow,
        fontSize: 14,
        fontFamily: "Satoshi",
        fontWeight: FontWeight.w500);
    SizeConfig.init(context);
    return Scaffold(
        backgroundColor: kBackground,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(0.w, 24.h, 0, 0.w),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(
                                  right: 24.w, left: 24.w, bottom: 24.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  const Text(
                                    "Browse",
                                    style: TextStyle(
                                        color: kWhite,
                                        fontSize: 24,
                                        fontFamily: "Satoshi",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacement(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const NotificationScreen();
                                        }));
                                      },
                                      child: SvgPicture.asset(
                                          "assets/svgs/notification.svg"))
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                right: 24.w,
                                left: 24.w,
                              ),
                              child: AppTextField(
                                title: "",
                                hintText: "Search",
                                isSearch: true,
                                prefixIcon:
                                    SvgPicture.asset("assets/svgs/search.svg"),
                              )).addHeight(24.h),
                          Padding(
                              padding: EdgeInsets.fromLTRB(24.w, 0.h, 0, 0.w),
                              child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: const <Widget>[
                                      BrowseContainer(title: "Actors"),
                                      SizedBox(width: 12),
                                      BrowseContainer(title: "Athletes"),
                                      SizedBox(width: 12),
                                      BrowseContainer(title: "Comedians"),
                                      SizedBox(width: 12),
                                      BrowseContainer(
                                          title: "Content Creators"),
                                      SizedBox(width: 12),
                                      BrowseContainer(title: "Musicians"),
                                      SizedBox(width: 12),
                                      BrowseContainer(title: "Reality TV"),
                                      SizedBox(width: 12),
                                      BrowseContainer(title: "Musicians"),
                                      SizedBox(width: 12),
                                    ],
                                  ))).addHeight(16.h),
                          const Divider(
                            thickness: 0.5,
                            color: kTextGrey2,
                          ).addHeight(26.h),
                          Padding(
                              padding: EdgeInsets.only(
                                  right: 0.w, left: 24.w, bottom: 24.h),
                              child: Column(children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.only(right: 24.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const <Widget>[
                                        Text("Featured", style: style1),
                                        Text("See all", style: style2)
                                      ],
                                    )).addHeight(16.h),
                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(children: const <Widget>[
                                      CelebContainer(
                                        image: "assets/pngs/feature_1.png",
                                        name: "Mr Funny - Sabinus",
                                        job: "Comedian",
                                        price: "32,500",
                                      ),
                                      SizedBox(width: 16),
                                      CelebContainer(
                                        image: "assets/pngs/feature_2.png",
                                        name: "Bimbo Ademoye",
                                        job: "Actor",
                                        price: "24,600",
                                      ),
                                      SizedBox(width: 16),
                                      CelebContainer(
                                        image: "assets/pngs/feature_1.png",
                                        name: "Mr Funny - Sabinus",
                                        job: "Comedian",
                                        price: "32,500",
                                      ),
                                    ])).addHeight(24.h),
                                Padding(
                                    padding: EdgeInsets.only(right: 24.w),
                                    child: const Divider(
                                      thickness: 0.5,
                                      color: kTextGrey2,
                                    )).addHeight(24.h),
                                Padding(
                                    padding: EdgeInsets.only(right: 24.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const <Widget>[
                                        Text(
                                          "Trending",
                                          style: style1,
                                        ),
                                        Text(
                                          "See all",
                                          style: style2,
                                        )
                                      ],
                                    )).addHeight(24.h),
                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(children: const <Widget>[
                                      CelebContainer(
                                        image: "assets/pngs/trending1.png",
                                        price: "18,900",
                                        job: "Musician",
                                        name: "Jonny Drille",
                                      ),
                                      SizedBox(width: 16),
                                      CelebContainer(
                                        image: "assets/pngs/trending2.png",
                                        price: "32,500",
                                        job: "Actor",
                                        name: "Ini Edo",
                                      ),
                                      SizedBox(width: 16),
                                      CelebContainer(
                                        image: "assets/pngs/trending1.png",
                                        price: "18,900",
                                        job: "Musician",
                                        name: "Jonny Drille",
                                      ),
                                    ])).addHeight(24.h),
                                Padding(
                                    padding: EdgeInsets.only(right: 24.w),
                                    child: const Divider(
                                      thickness: 0.5,
                                      color: kTextGrey2,
                                    )).addHeight(24.h),
                                Padding(
                                    padding: EdgeInsets.only(right: 24.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const <Widget>[
                                        Text(
                                          "New & Noteworthy",
                                          style: style1,
                                        ),
                                        Text(
                                          "See all",
                                          style: style2,
                                        )
                                      ],
                                    )).addHeight(24.h),
                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(children: const <Widget>[
                                      CelebContainer(
                                        image: "assets/pngs/news1.png",
                                        job: "Content Creator",
                                        price: "16,250",
                                        name: "Layiwasibi",
                                      ),
                                      SizedBox(width: 16),
                                      CelebContainer(
                                        image: "assets/pngs/news2.png",
                                        job: "Comedian",
                                        price: "27,000",
                                        name: "Tee Kuro",
                                      ),
                                      SizedBox(width: 16),
                                      CelebContainer(
                                        image: "assets/pngs/news1.png",
                                        job: "Content Creator",
                                        price: "16,250",
                                        name: "Layiwasibi",
                                      ),
                                    ])).addHeight(24.h),
                                Padding(
                                    padding: EdgeInsets.only(right: 24.w),
                                    child: const Divider(
                                      thickness: 0.5,
                                      color: kTextGrey2,
                                    )).addHeight(24.h),
                                Padding(
                                    padding: EdgeInsets.only(right: 24.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const <Widget>[
                                        Text(
                                          "Actors",
                                          style: style1,
                                        ),
                                        Text(
                                          "See all",
                                          style: style2,
                                        )
                                      ],
                                    )).addHeight(24.h),
                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(children: const <Widget>[
                                      CelebContainer(
                                        name: "Odunlade Adekola",
                                        job: "Actor",
                                        price: "97,700",
                                        image: "assets/pngs/actor1.png",
                                      ),
                                      SizedBox(width: 16),
                                      CelebContainer(
                                        name: "Lateef Adedimeji",
                                        job: "Actor",
                                        price: "82,480",
                                        image: "assets/pngs/actor2.png",
                                      ),
                                      SizedBox(width: 16),
                                      CelebContainer(
                                        name: "Odunlade Adekola",
                                        job: "Actor",
                                        price: "97,700",
                                        image: "assets/pngs/actor1.png",
                                      ),
                                    ])).addHeight(24.h),
                                Padding(
                                  padding: EdgeInsets.only(right: 24.w),
                                  child: const Divider(
                                      thickness: 0.5, color: kTextGrey2),
                                ).addHeight(24.h),
                                Padding(
                                    padding: EdgeInsets.only(right: 24.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        const Text(
                                          "Musicians",
                                          style: style1,
                                        ),
                                        const Text(
                                          "See all",
                                          style: style2,
                                        )
                                      ],
                                    )).addHeight(24.h),
                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(children: const <Widget>[
                                      CelebContainer(
                                        name: "Don Jazzy",
                                        job: "Musician",
                                        price: "68, 600",
                                        image: "assets/pngs/music1.png",
                                      ),
                                      SizedBox(width: 16),
                                      CelebContainer(
                                        name: "Jonny Drille",
                                        job: "Musician",
                                        price: "18,900",
                                        image: "assets/pngs/music2.png",
                                      ),
                                      SizedBox(width: 16),
                                      CelebContainer(
                                        name: "Don Jazzy",
                                        job: "Musician",
                                        price: "68, 600",
                                        image: "assets/pngs/music1.png",
                                      ),
                                    ])),
                              ]))
                        ])))));
  }
}
