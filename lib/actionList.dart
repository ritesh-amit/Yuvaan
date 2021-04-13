import 'package:flutter/material.dart';
import 'package:yu/appBar.dart';
import 'package:yu/dialogBoxes/dialogBoxExisting.dart';
import 'Utils/SizeConfig.dart';
import 'Utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActionList extends StatelessWidget {
final TextEditingController name = TextEditingController();

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
                          controller: name,
                          style: txtS(gc, 20, FontWeight.w500),
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintStyle: txtS(yc, 20, FontWeight.w500),
                            hintText: 'Search By Name/Position',
                          ),
                        ),
                      ),
                    ]),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: b * 35,
                      height: b * 35,
                      padding: EdgeInsets.symmetric(horizontal: b * 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: gc, width: h * 1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'images/filter.svg',
                        height: h * 16,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                  ),
                  SizedBox(width: b * 35),
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
                              horizontal: b * 25, vertical: h * 18),
                          child: Row(
                            children: [
                              Container(
                                width: b * 51,
                                height: h * 51,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: yc,
                                ),
                              ),
                              SizedBox(width: b * 18),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Nishant Singh",
                                    style: txtS(gc, 18, FontWeight.w500),
                                  ),
                                  sh(3),
                                  Text(
                                    "Position",
                                    style: txtS(yc, 16, FontWeight.w400),
                                  ),
                                  sh(3),
                                  Container(
                                    width: b * 600,
                                    child: Text(
                                      "Actions taken description",
                                      overflow: TextOverflow.ellipsis,
                                      style: txtS(
                                          Colors.black, 16, FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "DD/MM/YY",
                                    style: txtS(yc, 12, FontWeight.w500),
                                  ),
                                  sh(6),
                                  Text(
                                    "00:00 AM",
                                    style: txtS(yc, 12, FontWeight.w400),
                                  ),
                                ],
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
