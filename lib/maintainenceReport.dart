import 'package:flutter/material.dart';
import 'package:yu/appBar.dart';
import 'Utils/SizeConfig.dart';
import 'Utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MaintainenceReport extends StatelessWidget {
  final TextEditingController robotCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;
    return Scaffold(
      body: Container(
        child: Row(children: [
          Container(
            width: SizeConfig.screenWidth * 0.83,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              sh(20),
              Bar(),
              sh(45),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: b * 425,
                    height: h * 45,
                    margin: EdgeInsets.only(right: b * 35),
                    padding: EdgeInsets.symmetric(horizontal: b * 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: gc, width: h * 1),
                      borderRadius: BorderRadius.circular(h * 60),
                    ),
                    child: Row(children: [
                      SvgPicture.asset(
                        'images/search.svg',
                        height: h * 20,
                        allowDrawingOutsideViewBox: true,
                      ),
                      Spacer(),
                      Container(
                        alignment: Alignment.center,
                        width: b * 360,
                        height: h * 45,
                        child: TextField(
                          controller: robotCode,
                          style: txtS(gc, 20, FontWeight.w500),
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintStyle: txtS(yc, 20, FontWeight.w500),
                            hintText: 'Search By Robot Code',
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              sh(30),
              Container(
                margin: EdgeInsets.only(left: b * 35, right: b * 35),
                height: h * 700,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(h * 20),
                    topRight: Radius.circular(h * 20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.10),
                      blurRadius: 10,
                      spreadRadius: 0,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemCount: 20,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Column(children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: b * 40, vertical: h * 23),
                          child: Row(
                            children: [
                              SizedBox(width: b * 18),
                              Container(
                                alignment: Alignment.center,
                                height: h * 31,
                                width: b * 72,
                                decoration: BoxDecoration(
                                  color: gc,
                                  borderRadius: BorderRadius.circular(h * 25),
                                ),
                                child: Text(
                                  "10101",
                                  style:
                                      txtS(Colors.white, 18, FontWeight.w700),
                                ),
                              ),
                              SizedBox(width: b * 30),
                              Text(
                                "Issue Fixed",
                                style: txtS(Colors.black, 18, FontWeight.w400),
                              ),
                              Spacer(),
                              Text(
                                "DD/MM/YY",
                                style: txtS(yc, 14, FontWeight.w500),
                              ),
                              SizedBox(width: b * 40),
                              Text(
                                "00:00 AM",
                                style: txtS(yc, 14, FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: h * 0.5,
                          color: yc.withOpacity(0.7),
                          margin: EdgeInsets.symmetric(horizontal: b * 15),
                        ),
                      ]);
                    }),
              ),
            ]),
          ),
        ]),
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
