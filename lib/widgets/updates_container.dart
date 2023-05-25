import 'package:flutter/material.dart';
import 'package:kooha_test/core/constants/color_constant.dart';
import 'package:kooha_test/core/utils/size_config/extensions.dart';
import 'package:kooha_test/core/utils/size_config/size_config.dart';

class UpdateContainer extends StatefulWidget {
  const UpdateContainer({super.key});

  @override
  State<UpdateContainer> createState() => _UpdateContainerState();
}

class _UpdateContainerState extends State<UpdateContainer> {
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
                        text: "Your video from ",
                        style: TextStyle(color: kGrey)),
                    TextSpan(
                        text: "Bimbo Ayomye",
                        style: TextStyle(
                            color: kWhite, fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: " is ready!!!", style: TextStyle(color: kGrey)),
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
              const SizedBox(height: 6),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff333333),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  const [
                    Text(
                      "Watch video",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xfff8a80d),
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
    );
  }
}
