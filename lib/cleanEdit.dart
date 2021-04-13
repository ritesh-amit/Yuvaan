import 'package:flutter/material.dart';
import 'package:yu/appBar.dart';
import 'package:yu/dialogBoxes/dialogBoxExisting.dart';
import 'package:yu/calendar.dart';
import 'package:yu/dropDownOption.dart';
import 'Utils/SizeConfig.dart';
import 'Utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CleanEdit extends StatelessWidget {
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
                              sh(39),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: b * 80),
                                  Text(
                                    'Select Days',
                                    style: txtS(yc, 14, FontWeight.w400),
                                  ),
                                ],
                              ),
                              sh(5),
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
                              sh(10),
                              startTime(),
                              sh(25),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  MaterialButton(
                                    padding: EdgeInsets.zero,
                                    minWidth: b * 162,
                                    height: h * 42,
                                    onPressed: () {
                                      dialogBoxExisting(context);
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: h * 40,
                                      width: b * 159,
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
                                            'images/check.svg',
                                            height: h * 14,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                          SizedBox(width: b * 21),
                                          Text(
                                            'Save',
                                            style:
                                                txtS(gc, 18, FontWeight.w400),
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

// change all colors to gc when it is selected
  Widget startTime() {
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Container(
      width: b * 490,
      padding: EdgeInsets.symmetric(horizontal: b * 28, vertical: h * 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: yc.withOpacity(0.7), width: h * 2),
        borderRadius: BorderRadius.circular(h * 10),
      ),
      child: Row(
        children: [
          Text(
            'Start Time',
            style: txtS(yc, 18, FontWeight.w400),
          ),
          Spacer(),
          Container(
            alignment: Alignment.center,
            height: h * 26,
            width: b * 22,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: yc.withOpacity(0.7), width: h * 1),
            ),
            child: TextField(
              style: txtS(gc, 15, FontWeight.w500),
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintStyle: txtS(yc, 15, FontWeight.w400),
                hintText: '',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: b * 2, vertical: h * 4),
              ),
            ),
          ),
          SizedBox(width: b * 5),
          Text(
            ':',
            style: txtS(yc, 20, FontWeight.w700),
          ),
          SizedBox(width: b * 5),
          Container(
            alignment: Alignment.center,
            height: h * 26,
            width: b * 22,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: yc.withOpacity(0.7), width: h * 1),
            ),
            child: TextField(
              style: txtS(gc, 14, FontWeight.w500),
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintStyle: txtS(yc, 14, FontWeight.w400),
                hintText: '',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: b * 2, vertical: h * 4),
              ),
            ),
          ),
          SizedBox(width: b * 7),
          DropDownMenuBar(),
        ],
      ),
    );
  }

  Widget endTime() {
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Container(
      width: b * 490,
      padding: EdgeInsets.symmetric(horizontal: b * 28, vertical: h * 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: yc.withOpacity(0.7), width: h * 2),
        borderRadius: BorderRadius.circular(h * 10),
      ),
      child: Row(
        children: [
          Text(
            'Start Time',
            style: txtS(yc, 18, FontWeight.w400),
          ),
          Spacer(),
          Container(
            alignment: Alignment.center,
            height: h * 24,
            width: b * 20.5,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: yc.withOpacity(0.7), width: h * 2),
            ),
            child: TextField(
              style: txtS(gc, 14, FontWeight.w500),
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintStyle: txtS(yc, 14, FontWeight.w400),
                hintText: '00',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: b * 2, vertical: h * 4),
              ),
            ),
          ),
          SizedBox(width: b * 5),
          Text(
            ':',
            style: txtS(yc, 20, FontWeight.w700),
          ),
          SizedBox(width: b * 5),
          Container(
            alignment: Alignment.center,
            height: h * 24,
            width: b * 20.5,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: yc.withOpacity(0.7), width: h * 2),
            ),
            child: TextField(
              style: txtS(gc, 14, FontWeight.w500),
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintStyle: txtS(yc, 14, FontWeight.w400),
                hintText: '00',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: b * 2, vertical: h * 4),
              ),
            ),
          ),
          SizedBox(width: b * 7),
          DropDownMenuBar(),
        ],
      ),
    );
  }

  Widget day() {
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return InkWell(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: b * 30),
        height: h * 54,
        width: b * 490,
        decoration: BoxDecoration(
          //on tap the color changes to Color(0xffe7f4eb)
          color: Color(0xfff5f5f5),
          borderRadius: BorderRadius.circular(h * 10),
        ),
        child: Row(
          children: [
            //on tap the color changes to gc
            Text(
              'Monday',
              style: txtS(yc, 18, FontWeight.w700),
            ),
            Spacer(),
            Text(
              '10:00 AM',
              style: txtS(yc, 14, FontWeight.w500),
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
