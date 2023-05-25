import 'package:flutter/material.dart';
import 'package:kooha_test/core/utils/size_config/extensions.dart';
import 'package:kooha_test/core/utils/size_config/size_config.dart';

class BrowseContainer extends StatefulWidget {
  const BrowseContainer( {Key? key, required this.title, })
      : super(key: key);

  final String title;


  @override
  State<BrowseContainer> createState() => _BrowseContainerState();
}

class _BrowseContainerState extends State<BrowseContainer> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xff333333), width: 1, ),
      ),
      padding:  EdgeInsets.symmetric(horizontal: 22.w, vertical: 14.h, ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Text(
            widget.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: "Satoshi",
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );}}