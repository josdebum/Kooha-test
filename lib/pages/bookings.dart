import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:kooha_test/core/constants/color_constant.dart';
import 'package:kooha_test/core/utils/size_config/extensions.dart';
import 'package:kooha_test/core/utils/size_config/size_config.dart';
import 'package:kooha_test/core/utils/widget_extension.dart';
import 'package:kooha_test/widgets/booking_container.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        backgroundColor: const Color(0xFF1A1A1A),
        body: SafeArea(
          child: DefaultTabController(
            length: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 24.w, top: 24.h),
                    child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Bookings",
                          style: TextStyle(
                              color: kWhite,
                              fontSize: 24,
                              fontFamily: "Satoshi",
                              fontWeight: FontWeight.w700),
                        ))),
                SizedBox(height: 24.h),
                Padding(
                    padding: EdgeInsets.only(left: 24.w, right: 24.h),
                    child: ButtonsTabBar(
                      buttonMargin: EdgeInsets.only(
                          right: 12.w, top: 4, bottom: 4, left: 12.w),
                      radius: 30,
                      physics: const NeverScrollableScrollPhysics(),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: kGoldenYellow),
                      unselectedBackgroundColor: kTextGrey2,
                      unselectedLabelStyle: const TextStyle(color: kTextGrey),
                      labelStyle: const TextStyle(
                          color: kBlack3,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                      tabs: const [
                        Tab(
                          //icon: Icon(Icons.directions_car),
                          text: "Pending",
                        ),
                        Tab(
                          // icon: Icon(Icons.directions_transit),
                          text: "Completed",
                        ),
                        Tab(text: "Expired"
                            //icon: Icon(Icons.directions_bike)

                            ),
                      ],
                    )).addHeight(24.h),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      const Center(
                          child: Text(
                        "No Pending Booking",
                        style: TextStyle(
                            color: kWhite2,
                            fontFamily: "Satoshi",
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      )),
                      SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24.w),
                              child: Column(children: <Widget>[
                                const BookingContainer(
                                  title: "Birthday",
                                ).addHeight(16.h),
                                const BookingContainer(
                                  title: "Pep Talk",
                                ).addHeight(16.h),
                                const BookingContainer(title: "Birthday")
                                    .addHeight(40.h),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      color: const Color(0xff333333),
                                      width: 1,
                                    ),
                                    color: const Color(0xff1a1a1a),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 6,
                                            height: 6,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xfff8a80d),
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          Container(
                                            width: 6,
                                            height: 6,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xff333333),
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          Container(
                                            width: 6,
                                            height: 6,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xff333333),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ).addHeight(16.h),
                              ]))),
                      const Center(
                          child: Text(
                        "No Expired Booking",
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
        ));
  }
}
