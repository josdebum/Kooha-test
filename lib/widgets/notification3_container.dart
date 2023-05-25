import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kooha_test/core/utils/size_config/extensions.dart';
import 'package:kooha_test/core/utils/size_config/size_config.dart';

class Notification3Container extends StatefulWidget {
  const Notification3Container({super.key});

  @override
  State<Notification3Container> createState() => _Notification3ContainerState();
}

class _Notification3ContainerState extends State<Notification3Container> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          //  width: double.infinity,
          padding: const EdgeInsets.only(
            top: 16,
            bottom: 24,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset("assets/svgs/kooha.svg"),
              const SizedBox(width: 16),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 280.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xff333333),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: 274.w,
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 14,
                            //fontFamily: "Satoshi",
                            fontWeight: FontWeight.w400,
                          ),
                          children: <TextSpan>[
                            const TextSpan(
                                text: "Your payment of ",
                                style: TextStyle(
                                    color: Color(0xfff8a80d),
                                    fontWeight: FontWeight.w400)),
                            TextSpan(
                                text: "₦",
                                style: TextStyle(
                                  fontFamily: GoogleFonts.inter().fontFamily,
                                  color: const Color(0xfff8a80d),
                                )),
                            const TextSpan(
                                text:
                                    "32,500 has been refunded to your bank account.",
                                style: TextStyle(
                                  color: Color(0xfff8a80d),
                                  fontFamily: "Satoshi",
                                )),
                          ],
                        ),
                      ),
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
        ),
      ],
    );
  }
}
