import 'package:flutter/material.dart';
import 'package:kooha_test/core/utils/size_config/extensions.dart';

class AppButton extends StatelessWidget {
  final void Function()? onTap;
  final double? height;
  final double? width;
  final String text;
  final Color buttonColor;
  final Color textColor;
  final bool hasBorder;
  final Color borderColor;
  final double? fontSize;
  final Widget? child;
  final Widget? icon;
  final bool? loadingIcon;
  final bool hasPadding;

  const AppButton(
      {Key? key,
      this.onTap,
      this.icon,
      this.height,
      this.width,
      required this.text,
      this.child,
      required this.buttonColor,
      required this.textColor,
      required this.hasBorder,
      this.loadingIcon = false,
      this.borderColor = Colors.transparent,
      this.hasPadding = false,
      this.fontSize = 16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: hasPadding
            ? EdgeInsets.only(left: 24.w, right: 24.w)
            : EdgeInsets.zero,
        child: InkWell(
          onTap: onTap,
          child: Container(
              width: width ?? double.infinity,
              height: height ?? 62.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: hasBorder
                    ? Border.all(
                        color: borderColor,
                      )
                    : const Border(),
                color: buttonColor,
                borderRadius: const BorderRadius.all(Radius.circular(40)),
              ),
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: textColor,
                      fontSize: fontSize,
                      fontFamily: "Satoshi",
                      fontWeight: FontWeight.w700),
                ),
              )),
        ));
  }
}
