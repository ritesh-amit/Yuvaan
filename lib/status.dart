import 'package:flutter/material.dart';
import 'package:yu/appBar.dart';
import 'package:yu/dialogBoxes/dialogBoxResolve.dart';
import 'Utils/SizeConfig.dart';
import 'Utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Status extends StatelessWidget {
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
                    onTap: () {},
                    child: Container(
                      width: b * 35,
                      padding: EdgeInsets.symmetric(horizontal: b * 7),
                      height: b * 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: gc, width: h * 1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'images/Paper.svg',
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                  ),
                  SizedBox(width: b * 35),
                ],
              ),
              sh(30),
              Row(
                children: [
                  Container(
                    width: b * 556,
                    margin: EdgeInsets.only(left: b * 35),
                    child: Row(children: [
                      SvgPicture.asset(
                        'images/For.svg',
                        allowDrawingOutsideViewBox: true,
                      ),
                      SizedBox(width: b * 7),
                      Text(
                        "Pending",
                        style: txtS(Colors.black, 20, FontWeight.w700),
                      ),
                      Spacer(),
                      Text(
                        "Total  :  16",
                        style: txtS(yc, 14, FontWeight.w400),
                      ),
                    ]),
                  ),
                  SizedBox(width: b * 16),
                  Container(
                    width: b * 556,
                    child: Row(children: [
                      SvgPicture.asset(
                        'images/For.svg',
                        allowDrawingOutsideViewBox: true,
                      ),
                      SizedBox(width: b * 7),
                      Text(
                        "Resolved",
                        style: txtS(Colors.black, 20, FontWeight.w700),
                      ),
                      Spacer(),
                      Text(
                        "Total  :  16",
                        style: txtS(yc, 14, FontWeight.w400),
                      ),
                    ]),
                  ),
                ],
              ),
              sh(10),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: b * 35),
                    width: b * 556,
                    height: h * 655,
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
                        padding: EdgeInsets.only(top: h * 13),
                        itemCount: 20,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: b * 15, vertical: h * 10),
                            width: b * 520,
                            margin: EdgeInsets.symmetric(
                                horizontal: b * 18, vertical: h * 10),
                            decoration: BoxDecoration(
                              color: Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(h * 10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "04382",
                                          style: txtS(gc, 20, FontWeight.w700),
                                        ),
                                        sh(3),
                                        Container(
                                          width: b * 300,
                                          child: Text(
                                            "Problem Problem Problem",
                                            overflow: TextOverflow.ellipsis,
                                            style: txtS(Colors.black, 16,
                                                FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            InkWell(
                                              child: SvgPicture.asset(
                                                'images/Chat.svg',
                                                height: h * 22,
                                                width: b * 22,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                              ),
                                            ),
                                            SizedBox(width: b * 10),
                                            InkWell(
                                              onTap: () {
                                                dialogBoxResolve(context);
                                              },
                                              child: SvgPicture.asset(
                                                'images/Tick.svg',
                                                height: h * 22,
                                                width: b * 22,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                              ),
                                            ),
                                          ],
                                        ),
                                        sh(5),
                                        Text(
                                          "DD/MM/YY",
                                          style: txtS(yc, 14, FontWeight.w400),
                                        ),
                                        sh(6),
                                        Text(
                                          "10:00 AM",
                                          style: txtS(yc, 14, FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                sh(24),
                                // edit(),
                                //if there are comments
                                index % 3 == 0 ? sh(12) : sh(0),
                                index % 3 == 0
                                    ? Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Comment by : ",
                                                  style: txtS(
                                                      gc, 16, FontWeight.w400),
                                                ),
                                                Text(
                                                  "Ritesh Shukla",
                                                  style: txtS(Colors.black, 16,
                                                      FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                            sh(4),
                                            Container(
                                              width: b * 450,
                                              child: Text(
                                                "Ritesh Shukla Ritesh Shukla Ritesh Shukla Ritesh Shukla Ritesh Shukla ",
                                                style: txtS(Colors.black, 16,
                                                    FontWeight.w400),
                                              ),
                                            ),
                                          ])
                                    : sh(0),
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(width: b * 16),
                  Container(
                    width: b * 556,
                    height: h * 655,
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
                        padding: EdgeInsets.only(top: h * 13),
                        itemCount: 20,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: b * 15, vertical: h * 10),
                            width: b * 520,
                            margin: EdgeInsets.symmetric(
                                horizontal: b * 18, vertical: h * 10),
                            decoration: BoxDecoration(
                              color: Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(h * 10),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "04382",
                                      style: txtS(gc, 20, FontWeight.w700),
                                    ),
                                    sh(3),
                                    Container(
                                      width: b * 300,
                                      child: Text(
                                        "Problem Problem Problem",
                                        overflow: TextOverflow.ellipsis,
                                        style: txtS(
                                            Colors.black, 16, FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Text(
                                      "DD/MM/YY",
                                      style: txtS(yc, 14, FontWeight.w400),
                                    ),
                                    sh(6),
                                    Text(
                                      "10:00 AM",
                                      style: txtS(yc, 14, FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
  }

  Widget edit() {
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;
    return Column(
      children: [
        Container(
          width: b * 482,
          height: h * 93,
          padding: EdgeInsets.symmetric(horizontal: b * 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(h * 5),
            color: Colors.white,
          ),
          child: TextField(
            style: txtS(gc, 18, FontWeight.w500),
            maxLines: 5,
            decoration: InputDecoration(
              isDense: true,
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintStyle: txtS(yc, 16, FontWeight.w400),
              hintText: 'Type here...',
            ),
          ),
        ),
        sh(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MaterialButton(
              padding: EdgeInsets.zero,
              minWidth: b * 120,
              height: h * 40,
              onPressed: () {},
              child: Container(
                alignment: Alignment.center,
                height: h * 40,
                width: b * 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(h * 20),
                  color: gc,
                ),
                child: Text(
                  'Done',
                  style: txtS(Colors.white, 16, FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ],
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
