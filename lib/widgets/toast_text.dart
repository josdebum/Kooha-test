import 'package:flutter/material.dart';
import 'package:kooha_test/core/utils/size_config/extensions.dart';

class ToastText extends StatelessWidget {
  final String? text;
  final BuildContext context;

  const ToastText({Key? key, this.text, required this.context})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      margin: EdgeInsets.only(bottom: 130.h),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text(
        text!,
        style: const TextStyle(fontSize: 13.0, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
