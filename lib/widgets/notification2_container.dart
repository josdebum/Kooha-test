import 'package:flutter/material.dart';
import 'package:kooha_test/core/constants/color_constant.dart';
import 'package:kooha_test/core/utils/size_config/extensions.dart';
import 'package:kooha_test/core/utils/size_config/size_config.dart';

class Notification2Container extends StatefulWidget {
  const Notification2Container({super.key});

  @override
  State<Notification2Container> createState() => _Notification2ContainerState();
}

class _Notification2ContainerState extends State<Notification2Container> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      width: 390,
      padding: const EdgeInsets.only(top: 16, bottom: 24, ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Container(
            width: 33,
            height: 33,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image:  AssetImage(
                    "assets/pngs/feature_2.png"),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xfff8a80d), width: 1, ),
            ),

          ),
          const SizedBox(width: 16),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(
                width: 290.w,
                child:
                RichText(
                  text: const  TextSpan(
                    style: TextStyle(  fontSize: 14,
                      fontFamily: "Satoshi",
                      fontWeight: FontWeight.w400,),
                    children: <TextSpan>[
                      TextSpan(text: "Bimbo Ademoye ",
                          style: TextStyle(
                            fontFamily: "Satoshi",
                              color: kWhite, fontWeight: FontWeight.w500)

                      ),
                      TextSpan(text: "rejected your booking request because ", style: TextStyle(
                          color: kGrey, )),
                      TextSpan(text: "“The instruction provided is not clear enough for them to accept the booking request.”",
                          style: TextStyle(
                          color: kWhite,
                            fontFamily: "Satoshi",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500

                          )),

                    ],
                  ),)



              ),
              const SizedBox(height: 6),
              const Text(
                "Apr 20, 2022 | 04:05 AM",
                style: TextStyle(
                  color: Color(0xff666666),
                  fontSize: 10,
                  fontFamily: "Satoshi",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    )
    ;}}