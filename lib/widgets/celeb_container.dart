import 'package:flutter/material.dart';
import 'package:kooha_test/core/utils/size_config/extensions.dart';
import 'package:kooha_test/core/utils/size_config/size_config.dart';

class CelebContainer extends StatefulWidget {
  const CelebContainer(
      {Key? key,
      required this.image,
      required this.name,
      required this.job,
      required this.price})
      : super(key: key);

  final String image;
  final String name;
  final String job;
  final String price;

  @override
  State<CelebContainer> createState() => _CelebContainerState();
}

class _CelebContainerState extends State<CelebContainer> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 154.w,
          height: 194.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xff333333),
          ),
          // child: Image.asset(widget.image, fit: BoxFit.fill,),
        ),
        const SizedBox(height: 12),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: "Satoshi",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  widget.job,
                  style: const TextStyle(
                    color: Color(0xff666666),
                    fontSize: 12,
                    fontFamily: "Satoshi",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 12,
                  //fontFamily: "Satoshi",
                  fontWeight: FontWeight.w400,
                ),
                children: <TextSpan>[
                  const TextSpan(
                      text: "₦ ",
                      style: TextStyle(
                          color: Color(0xfff8a80d),
                          fontWeight: FontWeight.w500)),
                  TextSpan(
                      text: widget.price,
                      style: const TextStyle(
                        color: Color(0xfff8a80d),
                        fontFamily: "Satoshi",
                      )),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
