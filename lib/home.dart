import 'package:flutter/material.dart';
import 'package:yu/appBar.dart';
import 'Utils/SizeConfig.dart';
import 'Utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Home extends StatelessWidget {
  final TextEditingController robotCode = TextEditingController();

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
                          width: b * 556,
                          height: SizeConfig.screenHeight * 0.86111,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(h * 20),
                              topRight: Radius.circular(h * 20),
                            ),
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
                              sh(30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: b * 425,
                                    height: h * 45,
                                    margin: EdgeInsets.only(right: b * 35),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: b * 20),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: gc, width: h * 1),
                                      borderRadius:
                                          BorderRadius.circular(h * 60),
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
                                            hintStyle:
                                                txtS(yc, 20, FontWeight.w500),
                                            hintText: 'Search By Robot Code',
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  SizedBox(width: b * 16),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: b * 35,
                                      height: b * 35,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: b * 8),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border:
                                            Border.all(color: gc, width: h * 1),
                                        shape: BoxShape.circle,
                                      ),
                                      child: SvgPicture.asset(
                                        'images/filter.svg',
                                        height: h * 16,
                                        allowDrawingOutsideViewBox: true,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              sh(33),
                              Container(
                                height: h * 660,
                                child: ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    padding: EdgeInsets.zero,
                                    itemCount: 20,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) {
                                      return Column(children: [
                                        sh(9),
                                        block(),
                                        sh(16),
                                      ]);
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      SizedBox(width: b * 16),
                      Column(
                        children: [
                          Container(
                            height: h * 180,
                            width: b * 556,
                            child: Carousel(
                              boxFit: BoxFit.cover,
                              borderRadius: true,
                              radius: Radius.circular(h * 20),
                              autoplay: false,
                              animationCurve: Curves.fastOutSlowIn,
                              animationDuration: Duration(milliseconds: 200),
                              dotSize: h * 5,
                              dotIncreasedColor: Colors.white,
                              dotBgColor: Colors.transparent,
                              dotPosition: DotPosition.bottomCenter,
                              dotVerticalPadding: 0.0,
                              showIndicator: true,
                              indicatorBgPadding: h * 10,
                              images: [
                                ExactAssetImage("images/panel1.png"),
                                ExactAssetImage("images/panel2.png"),
                                ExactAssetImage("images/panel3.png"),
                                ExactAssetImage("images/panel4.png"),
                              ],
                            ),
                          ),
                          sh(20),
                          Container(
                            width: b * 556,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(h * 20),
                                topRight: Radius.circular(h * 20),
                              ),
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
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                sh(31),
                                Row(
                                  children: [
                                    SizedBox(width: b * 43),
                                    Text(
                                      "Robot Code : ",
                                      style: txtS(gc, 22, FontWeight.w300),
                                    ),
                                    Text(
                                      "1234UFO",
                                      style: txtS(gc, 22, FontWeight.w700),
                                    ),
                                    Text(
                                      "  |  ",
                                      style: txtS(gc, 28, FontWeight.w500),
                                    ),
                                  ],
                                ),
                                sh(25),
                                Row(
                                  children: [
                                    Container(
                                      width: b * 277,
                                      padding: EdgeInsets.only(left: b * 43),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Cleaning Status",
                                            style: txtS(Colors.black, 16,
                                                FontWeight.w600),
                                          ),
                                          sh(12),
                                          Text(
                                            "Completed",
                                            style:
                                                txtS(yc, 16, FontWeight.w500),
                                          ),
                                          sh(5),
                                          Text(
                                            "Start Time : 00:00 AM",
                                            style:
                                                txtS(yc, 16, FontWeight.w500),
                                          ),
                                          sh(5),
                                          Text(
                                            "End Time : 00:00 AM",
                                            style:
                                                txtS(yc, 16, FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: b * (235 - 42),
                                      padding: EdgeInsets.only(left: b * 43),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Battery Status",
                                            style: txtS(Colors.black, 16,
                                                FontWeight.w600),
                                          ),
                                          sh(12),
                                          Text(
                                            "Battery Charge : X%",
                                            style:
                                                txtS(yc, 16, FontWeight.w500),
                                          ),
                                          sh(5),
                                          Text(
                                            "Status : Charging",
                                            style:
                                                txtS(yc, 16, FontWeight.w500),
                                          ),
                                          sh(5),
                                          Text(
                                            "Battery Health : Y%",
                                            style:
                                                txtS(yc, 16, FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                sh(20),
                                Container(
                                  color: yc.withOpacity(0.3),
                                  height: h * 1,
                                ),
                                sh(23),
                                Container(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: b * 43),
                                          child: Text(
                                            "Device History",
                                            style: txtS(Colors.black, 16,
                                                FontWeight.w600),
                                          ),
                                        ),
                                        sh(21),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(width: b * 45),
                                            Container(
                                              width: b * 115,
                                              child: Text(
                                                "Date",
                                                style: txtS(
                                                    gc, 16, FontWeight.w400),
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              width: b * 115,
                                              child: Text(
                                                "Start Time",
                                                style: txtS(
                                                    gc, 16, FontWeight.w400),
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              width: b * 115,
                                              child: Text(
                                                "End Time",
                                                style: txtS(
                                                    gc, 16, FontWeight.w400),
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              width: b * 115,
                                              child: Text(
                                                "Cleaned on Schedule",
                                                style: txtS(
                                                    gc, 16, FontWeight.w400),
                                              ),
                                            ),
                                            SizedBox(width: b * 45),
                                          ],
                                        ),
                                        sh(30),
                                        Container(
                                          height: h * 250,
                                          child: ListView.builder(
                                              physics: BouncingScrollPhysics(),
                                              shrinkWrap: true,
                                              padding: EdgeInsets.zero,
                                              itemCount: 20,
                                              itemBuilder: (BuildContext ctxt,
                                                  int index) {
                                                return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      index % 3 == 0
                                                          ? notCompleted()
                                                          : history(),
                                                      sh(10),
                                                      Container(
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    h * 45),
                                                        height: h * 1,
                                                        color:
                                                            yc.withOpacity(0.1),
                                                      ),
                                                      sh(10),
                                                    ]);
                                              }),
                                        ),
                                      ]),
                                ),
                              ],
                            ),
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

  Widget block() {
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: b * 35),
            Text(
              "Block",
              style: txtS(Colors.black, 16, FontWeight.w700),
            ),
            Spacer(),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: h * 5),
                width: b * 78,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(h * 30),
                  border: Border.all(
                    color: Colors.black,
                    width: h * 0.3,
                  ),
                ),
                child: Text(
                  "View All",
                  style: txtS(Colors.black, 12, FontWeight.w600),
                ),
              ),
            ),
            SizedBox(width: b * 40),
          ],
        ),
        sh(18),
        Container(
          height: h * 50,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              itemCount: 8,
              itemBuilder: (BuildContext ctxt, int index) {
                return Container(
                  alignment: Alignment.center,
                  height: h * 50,
                  width: h * 50,
                  margin: EdgeInsets.only(
                      right: (index != 8) ? b * 12 : 0,
                      left: index != 0 ? b * 12 : 0),
                  decoration: BoxDecoration(
                    color: Color(0xffe7f4eb),
                    borderRadius: BorderRadius.circular(h * 5),
                    border: Border.all(color: gc, width: h * 0.5),
                  ),
                  child: Text(
                    "3345",
                    style: txtS(gc, 16, FontWeight.w700),
                  ),
                );
              }),
        ),
        sh(18),
        Container(
          height: h * 0.5,
          color: yc.withOpacity(1),
        ),
      ],
    );
  }

  Widget expandedBlock() {
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: b * 50),
      height: h * 660,
      child: GridView.builder(
          itemCount: 143,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8,
            crossAxisSpacing: b * 0,
            mainAxisSpacing: h * 0,
            childAspectRatio: 1,
          ),
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemBuilder: (BuildContext ctxt, int index) {
            return Column(children: [
              Container(
                alignment: Alignment.center,
                height: h * 50,
                width: h * 50,
                decoration: BoxDecoration(
                  color: Color(0xffebefff),
                  borderRadius: BorderRadius.circular(h * 5),
                  border: Border.all(color: Color(0xff3863fc), width: h * 0.5),
                ),
                child: Text(
                  "3345",
                  style: txtS(Color(0xff3863fc), 16, FontWeight.w700),
                ),
              ),
            ]);
          }),
    );
  }

  Widget notCompleted() {
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;
    return Container(
      height: h * 65,
      width: b * 480,
      margin: EdgeInsets.symmetric(horizontal: b * 40),
      decoration: BoxDecoration(
        color: Color(0xfff29339).withOpacity(0.1),
        borderRadius: BorderRadius.circular(h * 5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: b * 5),
              Container(
                width: b * 115,
                child: Text(
                  "DD//MM/YY",
                  style: txtS(yc, 16, FontWeight.w400),
                ),
              ),
              Spacer(),
              Container(
                width: b * 115,
                child: Text(
                  " 00:00 AM",
                  style: txtS(yc, 16, FontWeight.w400),
                ),
              ),
              Spacer(),
              Container(
                width: b * 115,
                child: Text(
                  "00:00 PM",
                  style: txtS(yc, 16, FontWeight.w400),
                ),
              ),
              Spacer(),
              Container(
                width: b * 115,
                padding: EdgeInsets.symmetric(horizontal: b * (47.5 + 2)),
                color: Colors.transparent,
                child: Container(
                  width: b * 16,
                  height: h * 20,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(h * 5),
                  ),
                  child: Icon(Icons.close, color: Colors.white, size: h * 16),
                ),
              ),
              SizedBox(width: b * 5),
            ],
          ),
          sh(10),
          Row(
            children: [
              SizedBox(width: b * 10),
              Icon(Icons.info, color: Color(0xfff29339), size: h * 20),
              Text(
                "  Not Cleaned : ",
                style: txtS(Color(0xfff29339), 16, FontWeight.w400),
              ),
              Text(
                "Reason for not cleaning on time",
                style: txtS(yc, 16, FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget history() {
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: b * 45),
        Container(
          width: b * 115,
          child: Text(
            "DD//MM/YY",
            style: txtS(yc, 16, FontWeight.w400),
          ),
        ),
        Spacer(),
        Container(
          width: b * 115,
          child: Text(
            " 00:00 AM",
            style: txtS(yc, 16, FontWeight.w400),
          ),
        ),
        Spacer(),
        Container(
          width: b * 115,
          child: Text(
            "00:00 PM",
            style: txtS(yc, 16, FontWeight.w400),
          ),
        ),
        Spacer(),
        Container(
          width: b * 115,
          padding: EdgeInsets.symmetric(horizontal: b * (47.5 + 2)),
          color: Colors.white,
          child: Container(
            width: b * 16,
            height: h * 20,
            decoration: BoxDecoration(
              color: gc,
              borderRadius: BorderRadius.circular(h * 5),
            ),
            child: Icon(Icons.check, color: Colors.white, size: h * 16),
          ),
        ),
        SizedBox(width: b * 45),
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
