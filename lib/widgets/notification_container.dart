import 'package:flutter/material.dart';
import 'package:kooha_test/core/constants/color_constant.dart';
import 'package:kooha_test/core/utils/size_config/extensions.dart';
import 'package:kooha_test/core/utils/size_config/size_config.dart';

class NotificationContainer extends StatefulWidget {
  const NotificationContainer({super.key});

  @override
  State<NotificationContainer> createState() => _NotificationContainerState();
}

class _NotificationContainerState extends State<NotificationContainer> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      width: 390.w,
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 24,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 33,
            height: 33,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/pngs/feature_2.png"),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xfff8a80d),
                width: 1,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Satoshi",
                    fontWeight: FontWeight.w400,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Bimbo Ademoye ",
                        style: TextStyle(
                            color: kWhite, fontWeight: FontWeight.w500)),
                    TextSpan(
                        text:
                            "has accepted your booking \nrequest. Sit back and wait for your video.",
                        style: TextStyle(color: kGrey)),
                  ],
                ),
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
    );
  }
}
