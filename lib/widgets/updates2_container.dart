import 'package:flutter/material.dart';
import 'package:kooha_test/core/constants/color_constant.dart';
import 'package:kooha_test/core/utils/size_config/extensions.dart';
import 'package:kooha_test/core/utils/size_config/size_config.dart';

class Update2Container extends StatefulWidget {
  const Update2Container({super.key});

  @override
  State<Update2Container> createState() => _Update2ContainerState();
}

class _Update2ContainerState extends State<Update2Container> {
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
                image: AssetImage(
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
                              color: kWhite, fontWeight: FontWeight.w500)

                      ),
                      TextSpan(text: "sent you a message. Check your inbox", style: TextStyle(
                          color: kGrey, )),


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
              const SizedBox(height: 6),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff333333),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10, ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    const Text(
                      "Open inbox",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color:  Color(0xfff8a80d),
                        fontSize: 12,
                        fontFamily: "Satoshi",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );}}