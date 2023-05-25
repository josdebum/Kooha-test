import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kooha_test/core/constants/color_constant.dart';
import 'package:kooha_test/core/utils/size_config/extensions.dart';
import 'package:kooha_test/pages/bookings.dart';
import 'package:kooha_test/pages/browse.dart';
import 'package:kooha_test/pages/inbox.dart';
import 'package:kooha_test/pages/profile.dart';

class NavigationWidget extends StatefulWidget {
  int? loadedTab;

  NavigationWidget({Key? key, this.loadedTab = 0}) : super(key: key);

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: widget.loadedTab,
        children: const [
          BrowseScreen(),
          BookingScreen(),
          InboxScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border:  Border(
            top:  BorderSide( //                   <--- right side
              color: kTextGrey,
              width: 0.1,
            ),
          )),
        child:BottomNavigationBar(
        backgroundColor: kBackground,

        elevation: 0,
        onTap: (index) {
          setState(() {
            widget.loadedTab = index;
          });
        },
        currentIndex: widget.loadedTab ?? 0,
        selectedFontSize: 10,
          unselectedItemColor: kTextGrey,

        selectedIconTheme: const IconThemeData(color: kWhite, size: 40),
        selectedItemColor: kWhite,
        selectedLabelStyle:
        const TextStyle(fontWeight: FontWeight.w500,fontFamily: "Satoshi", color: kWhite),
        unselectedLabelStyle:
        const TextStyle(fontWeight: FontWeight.w500, fontFamily: "Satoshi",color: kWhite),
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            activeIcon: Padding(padding: EdgeInsets.only(bottom: 10, top: 6),child:SvgPicture.asset(
              "assets/svgs/bookings.svg",
              width: 24,
              height: 24,
              color: kWhite,

            )),
            icon: Padding(padding: EdgeInsets.only(bottom: 10, top: 6),child:SvgPicture.asset(
              "assets/svgs/browse.svg",
              width: 24,
              height: 24,
              color: kTextGrey
            )

            ),
            label: "Browse",
            ),
          BottomNavigationBarItem(
            activeIcon: Padding(padding: EdgeInsets.only(bottom: 10, top: 6),child:SvgPicture.asset(
              "assets/svgs/bookings.svg",
              width: 24,
              height: 24,
              color: kWhite,
            )),
            icon:Padding(padding: EdgeInsets.only(bottom: 10, top: 6),child: SvgPicture.asset(
              "assets/svgs/bookings.svg",
              width: 24,
              height: 24,
            )),
            label: "Bookings",
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(padding: EdgeInsets.only(bottom: 10, top: 6),child: SvgPicture.asset(
              "assets/svgs/inbox.svg",
              width: 24,
              height: 24,
              color: kWhite,
            )),
            icon: Padding(padding: EdgeInsets.only(bottom: 10, top: 6),child:SvgPicture.asset(
              "assets/svgs/inbox.svg",
              width: 24,
              height: 24,
            )),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(padding:
            EdgeInsets.only(bottom: 10, top: 6),child: SvgPicture.asset("assets/svgs/profile.svg",
                width: 24, height: 24, color: kWhite)),
            icon: Padding(padding: EdgeInsets.only(bottom: 10, top: 6),child:SvgPicture.asset(
              "assets/svgs/profile.svg",
              width: 24,
              height: 24,
            )),
            label: "Profile",
          ),
        ],
      ),
      ));
  }
}
