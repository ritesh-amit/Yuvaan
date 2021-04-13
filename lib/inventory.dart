import 'package:flutter/material.dart';
import 'package:yu/appBar.dart';
import 'package:yu/mainHome.dart';
import 'Utils/SizeConfig.dart';
import 'Utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Inventory extends StatelessWidget {
  final TextEditingController partName = TextEditingController();
  
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
                          controller: partName,
                          style: txtS(gc, 20, FontWeight.w500),
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintStyle: txtS(yc, 20, FontWeight.w500),
                            hintText: 'Search By Parts/Tools',
                          ),
                        ),
                      ),
                    ]),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return HomeMain(index: 15);
                        }),
                      );
                    },
                    child: Container(
                      width: b * 35,
                      padding: EdgeInsets.symmetric(horizontal: b * 10),
                      height: b * 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: gc, width: h * 1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'images/Edit.svg',
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                  ),
                  SizedBox(width: b * 35),
                ],
              ),
              sh(27),
              Row(children: [
                Container(
                  margin: EdgeInsets.only(left: b * 35),
                  width: b * 556,
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
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(
                            horizontal: b * 25, vertical: h * 25),
                        child: Text(
                          "Robot Parts",
                          style: txtS(gc, 24, FontWeight.w700),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: b * 26),
                          Text(
                            "Robot Parts",
                            style: txtS(gc, 18, FontWeight.w700),
                          ),
                          Spacer(),
                          Text(
                            "Available",
                            style: txtS(Colors.black, 18, FontWeight.w500),
                          ),
                          Spacer(),
                          Text(
                            "Required",
                            style: txtS(Colors.black, 18, FontWeight.w500),
                          ),
                          SizedBox(width: b * 26),
                        ],
                      ),
                      sh(22),
                      Container(
                        height: h * 550,
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemCount: 20,
                            itemBuilder: (BuildContext ctxt, int index) {
                              return Column(children: [
                                Row(
                                  children: [
                                    SizedBox(width: b * 26),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      width: b * 168,
                                      child: Text(
                                        "Part Index",
                                        style: txtS(gc, 18, FontWeight.w500),
                                      ),
                                    ),
                                    Spacer(),
                                    //if the available is less than required change color to yc
                                    Container(
                                      width: b * 168,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "5",
                                        style: txtS(
                                            Colors.black, 18, FontWeight.w500),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.only(right: b * 40),
                                      width: b * (150),
                                      child: Text(
                                        "10",
                                        style: txtS(
                                            Colors.black, 18, FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                sh(11),
                                Container(
                                  color: yc.withOpacity(0.7),
                                  height: h * 0.5,
                                ),
                                sh(10),
                              ]);
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: b * 16),
                Container(
                  width: b * 556,
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
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(
                            horizontal: b * 25, vertical: h * 25),
                        child: Text(
                          "Tools",
                          style: txtS(gc, 24, FontWeight.w700),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: b * 26),
                          Text(
                            "Tools",
                            style: txtS(gc, 18, FontWeight.w700),
                          ),
                          Spacer(),
                          Text(
                            "Available",
                            style: txtS(Colors.black, 18, FontWeight.w500),
                          ),
                          Spacer(),
                          Text(
                            "Required",
                            style: txtS(Colors.black, 18, FontWeight.w500),
                          ),
                          SizedBox(width: b * 26),
                        ],
                      ),
                      sh(22),
                      Container(
                        height: h * 550,
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemCount: 20,
                            itemBuilder: (BuildContext ctxt, int index) {
                              return Column(children: [
                                Row(
                                  children: [
                                    SizedBox(width: b * 26),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      width: b * 168,
                                      child: Text(
                                        "Tool Index",
                                        style: txtS(gc, 18, FontWeight.w500),
                                      ),
                                    ),
                                    Spacer(),
                                    //if the available is less than required change color to yc

                                    Container(
                                      width: b * 168,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "5",
                                        style: txtS(
                                            Colors.black, 18, FontWeight.w500),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.only(right: b * 40),
                                      width: b * (150),
                                      child: Text(
                                        "10",
                                        style: txtS(
                                            Colors.black, 18, FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                sh(11),
                                Container(
                                  color: yc.withOpacity(0.7),
                                  height: h * 0.5,
                                ),
                                sh(10),
                              ]);
                            }),
                      ),
                    ],
                  ),
                ),
              ]),
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
