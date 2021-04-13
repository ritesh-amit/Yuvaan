import 'package:flutter/material.dart';
import 'package:yu/dialogBoxes/dialogBoxManager.dart';
import 'Utils/SizeConfig.dart';
import 'Utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;
    return Container(
      width: SizeConfig.screenWidth * 0.83,
      child: Row(
        children: [
          SizedBox(width: b * 60),
          Text(
            "Govind Solar Power Plant",
            style: txtS(Color(0xff858585), 24, FontWeight.w700),
          ),
          Spacer(),
          InkWell(
            child: SvgPicture.asset(
              'images/bell.svg',
              height: h * 30,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          SizedBox(width: b * 10),
          Container(
            height: b * 45,
            width: h * 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: gc,
            ),
          ),
          SizedBox(width: b * 10),
          InkWell(
            onTap: () {
              dialogBoxManager(context);
            },
            child: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
            ),
          ),
          SizedBox(width: b * 40),
        ],
      ),
    );
  }

  TextStyle txtS(Color col, double siz, FontWeight wg) {
    return TextStyle(
      color: col,
      fontWeight: wg,
      fontSize: SizeConfig.screenHeight * siz / 900,
    );
  }
}
