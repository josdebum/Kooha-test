import 'package:flutter/material.dart';
import 'package:kooha_test/core/constants/color_constant.dart';
import 'package:kooha_test/core/utils/size_config/extensions.dart';
import 'package:kooha_test/core/utils/size_config/size_config.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        backgroundColor: kBackground,
        body: SafeArea(child: SingleChildScrollView(child:Padding(padding:
        EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),

            child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[  Padding(
                    padding: EdgeInsets.only( top: 0.h),
                    child:  const Align(
                        alignment: Alignment.topLeft,
                        child: Text("Inbox", style: TextStyle(color: kWhite, fontSize: 24,
                            fontFamily: "Satoshi", fontWeight: FontWeight.w700),))),])))));}}