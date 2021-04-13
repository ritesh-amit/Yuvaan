import 'package:flutter/material.dart';
import 'package:yu/appBar.dart';
import 'package:yu/calendar.dart';
import 'package:yu/dialogBoxes/dialogBoxCleaning.dart';
import 'package:yu/mainHome.dart';
import 'Utils/SizeConfig.dart';
import 'Utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Clean extends StatelessWidget {
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
                  Bar(), //to pass creditionals
                  sh(45),
                  Row(
                    children: [
                      Column(children: [
                        Container(
                          margin: EdgeInsets.only(left: b * 35),
                          width: b * 640,
                          height: h * 715,
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
                          child: Column(
                            children: [
                              sh(50),
                              MaterialButton(
                                padding: EdgeInsets.zero,
                                minWidth: b * 400,
                                height: h * 50,
                                onPressed: () {
                                  dialogBoxCleaning(context);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: h * 50,
                                  width: b * 490,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(h * 5),
                                    color: gc,
                                  ),
                                  child: Text(
                                    'Clean Now',
                                    style:
                                        txtS(Colors.white, 18, FontWeight.w500),
                                  ),
                                ),
                              ),
                              sh(18),
                              Text(
                                'OR',
                                style: txtS(Colors.black, 16, FontWeight.w500),
                              ),
                              sh(30),
                              ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  padding: EdgeInsets.zero,
                                  itemCount: 7,
                                  itemBuilder: (BuildContext ctxt, int index) {
                                    return Column(children: [
                                      day(),
                                      sh(10),
                                    ]);
                                  }),
                              sh(25),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  MaterialButton(
                                    padding: EdgeInsets.zero,
                                    minWidth: b * 162,
                                    height: h * 42,
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                          return HomeMain(index: 14);
                                        }),
                                      );
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: h * 42,
                                      width: b * 162,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(h * 6),
                                        color: Colors.white,
                                        border:
                                            Border.all(color: gc, width: h * 1),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            'images/Edit.svg',
                                            height: h * 16,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                          SizedBox(width: b * 26),
                                          Text(
                                            'Edit',
                                            style:
                                                txtS(gc, 18, FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: b * 75),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]),
                      SizedBox(width: b * 40),
                      Column(
                        children: [
                          Container(
                            width: b * 415,
                            height: h * 715,
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
                            child: CalendarClean(),
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

  Widget day() {
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: b * 30),
      height: h * 54,
      width: b * 490,
      decoration: BoxDecoration(
        color: Color(0xfff5f5f5),
        borderRadius: BorderRadius.circular(h * 10),
      ),
      child: Row(
        children: [
          Text(
            'Monday',
            style: txtS(gc, 18, FontWeight.w700),
          ),
          Spacer(),
          Text(
            '10:00 AM',
            style: txtS(gc, 14, FontWeight.w500),
          ),
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

  SizedBox sh(double h) {
    return SizedBox(height: SizeConfig.screenHeight * h / 900);
  }
}
