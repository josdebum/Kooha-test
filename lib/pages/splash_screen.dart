import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:kooha_test/core/constants/color_constant.dart';
import 'package:kooha_test/core/utils/size_config/extensions.dart';
import 'package:kooha_test/core/utils/size_config/size_config.dart';
import 'package:kooha_test/core/utils/widget_extension.dart';
import 'package:kooha_test/pages/sign_up.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> loadApp(BuildContext context) async {
    Future.delayed(
      const Duration(milliseconds: 1000),
          () async {
        await
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
          return const SignUpScreen();
        }));
      },
    );
  }

  @override
  initState() {
    loadApp(context);
    super.initState();
  }

  @override

  @override
  Widget build(BuildContext context) {
    loadApp(context);
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            "assets/svgs/logo.svg",
            width: 200.w,
            fit: BoxFit.cover,
          ).center(),
        ],
      ),
    );
  }
}
