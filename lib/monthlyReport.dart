import 'package:flutter/material.dart';
import 'package:yu/appBar.dart';
import 'package:yu/calendarReport.dart';
import 'Utils/SizeConfig.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MonthlyReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              width: SizeConfig.screenWidth * 0.83,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  sh(20),
                  Bar(),
                  sh(48),
                  Row(
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: b * 35),
                              padding:
                                  EdgeInsets.only(top: h * 35, bottom: h * 35),
                              width: b * 663,
                              height: h * 761,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(h * 20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.10),
                                    blurRadius: 20,
                                    spreadRadius: 0,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: CalendarReport(),
                            ),
                          ]),
                      SizedBox(width: b * 43),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                b * 15, h * 14, b * 15, h * 20),
                            width: b * 422,
                            height: h * (634 + 14),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(h * 20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.10),
                                  blurRadius: 10,
                                  spreadRadius: 0,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Incomplete Cleaning Days",
                                  style:
                                      txtS(Colors.black, 16, FontWeight.w500),
                                ),
                                sh(17),
                                Container(
                                  height: h * 570,
                                  child: ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      padding: EdgeInsets.zero,
                                      itemCount: 17,
                                      itemBuilder:
                                          (BuildContext ctxt, int index) {
                                        return Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xfff5f5f5),
                                            borderRadius:
                                                BorderRadius.circular(h * 10),
                                          ),
                                          margin:
                                              EdgeInsets.only(bottom: h * 9),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: b * 6,
                                              vertical: h * 5),
                                          child: Row(children: [
                                            Container(
                                              width: b * 77,
                                              height: h * 60,
                                              decoration: BoxDecoration(
                                                color: Color(0xffe7f4eb),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        h * 10),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "2",
                                                    style: txtS(Colors.black,
                                                        20, FontWeight.w500),
                                                  ),
                                                  sh(5),
                                                  Text(
                                                    "March 20",
                                                    style: txtS(Colors.black,
                                                        12, FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: b * 20),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "58",
                                                  style: txtS(
                                                      Color(0xffff00000),
                                                      14,
                                                      FontWeight.w700),
                                                ),
                                                sh(5),
                                                Text(
                                                  "Reason : High speed Wind",
                                                  style: txtS(Colors.black, 14,
                                                      FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ]),
                                        );
                                      }),
                                ),
                              ],
                            ),
                          ),
                          sh(13),
                          Container(
                            width: b * 422,
                            height: h * 100,
                            padding: EdgeInsets.fromLTRB(
                                b * 24, h * 20, b * 15, h * 22),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(h * 20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.10),
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Column(children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'images/plus.svg',
                                        height: h * 22,
                                        allowDrawingOutsideViewBox: true,
                                      ),
                                      SizedBox(width: b * 10),
                                      Text(
                                        "Not Scheduled",
                                        style: txtS(Color(0xfff29339), 14,
                                            FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'images/battery.svg',
                                        height: h * 20,
                                        allowDrawingOutsideViewBox: true,
                                      ),
                                      SizedBox(width: b * 10),
                                      Text(
                                        "Battery not Charged",
                                        style: txtS(Color(0xffff00000), 14,
                                            FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              sh(10),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'images/wind.svg',
                                        height: h * 22,
                                        allowDrawingOutsideViewBox: true,
                                      ),
                                      SizedBox(width: b * 10),
                                      Text(
                                        "High Speed Wind",
                                        style: txtS(Color(0xff2f81b1), 14,
                                            FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'images/rain.svg',
                                        height: h * 20,
                                        allowDrawingOutsideViewBox: true,
                                      ),
                                      SizedBox(width: b * 10),
                                      Text(
                                        "Heavy Rain",
                                        style: txtS(Color(0xffaee1ff), 14,
                                            FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
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

  SizedBox sh(double h) {
    return SizedBox(height: SizeConfig.screenHeight * h / 900);
  }
}
