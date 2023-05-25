
import 'package:flutter/material.dart';
import 'package:kooha_test/core/constants/color_constant.dart';
import 'package:kooha_test/core/utils/size_config/extensions.dart';
import 'package:kooha_test/core/utils/size_config/size_config.dart';
import 'package:kooha_test/core/utils/widget_extension.dart';

class BookingContainer extends StatefulWidget {

  const BookingContainer( {Key? key, required this.title, })
      : super(key: key);

  final String title;

  @override
  State<BookingContainer> createState() => _BookingContainerState();
}

class _BookingContainerState extends State<BookingContainer> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      width: double.infinity,
     // height: 160.h,
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xff333333), width: 1, ),
        color: const Color(0xff1e1e1e),
      ),
      child: Column(
        children: <Widget>[

              ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: -4, vertical: 0),
            visualDensity: VisualDensity.compact,

            leading:   Container(
              width: 33,
              height: 33,
              decoration:  BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(
                      "assets/pngs/feature_2.png"),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
                border:  Border.all(color: const Color(0xfff8a80d), width: 1, ),
              ),

            ),
            title:  const Text(
              "Bimbo Ademoye",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: "Satoshi",
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle:  const Text(
              "Actress",
              style: TextStyle(
                color: Color(0xff666666),
                fontSize: 12,
                fontFamily: "Satoshi",
                fontWeight: FontWeight.w500,
              ),
            ),

            trailing:     Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff219653),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6, ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:const [
                  Text(
                    "Completed",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: "Satoshi",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

          ),

          const Divider (thickness: 0.5, color: kTextGrey).addHeight(12.h),
          const   Align(
             alignment: Alignment.topLeft,
             child: Text(
            "Occassion",
            style: TextStyle(
              color: Color(0xff666666),
              fontSize: 12,
              fontFamily: "Satoshi",
              fontWeight: FontWeight.w500,
            ),
          )).addHeight(4),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[ Text(
            widget.title,
            style: const TextStyle(
              color: Color(0xfff8a80d),
              fontSize: 14,
              fontFamily: "Satoshi",
              fontWeight: FontWeight.w700,
            ),

          ),
                const Text(
    "4 days ago",
    style: TextStyle(
    color: Color(0xff666666),
    fontSize: 12,
    fontFamily: "Satoshi",
    fontWeight: FontWeight.w500,
    )),
          ]).addHeight(12.h)


        ],
      ),
    );


  }}