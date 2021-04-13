import 'package:flutter/material.dart';
import 'package:yu/actionList.dart';
import 'package:yu/addInventory.dart';
import 'package:yu/clean.dart';
import 'package:yu/cleanEdit.dart';
import 'package:yu/engineer.dart';
import 'package:yu/home.dart';
import 'package:yu/inventory.dart';
import 'package:yu/maintainenceReport.dart';
import 'package:yu/managers.dart';
import 'package:yu/monthlyReport.dart';
import 'package:yu/profile.dart';
import 'package:yu/status.dart';
import 'Utils/SizeConfig.dart';
import 'Utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeMain extends StatefulWidget {
  int index;
  HomeMain({
    @required this.index,
  });

  @override
  State<StatefulWidget> createState() {
    return _HomeMainState();
  }
}

class _HomeMainState extends State<HomeMain> {
  List<Widget> _widgetOption = <Widget>[
    Home(),
    Clean(),
    Managers(),
    Container(),
    Container(),
    MonthlyReport(),
    ActionList(),
    MaintainenceReport(),
    Inventory(),
    Inventory(),
    Status(),
    Engineers(),
    Profile(),
    CleanEdit(),
    AddInventory(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Scaffold(
      body: Container(
        child: Row(children: [
          Container(
            width: SizeConfig.screenWidth * 0.17,
            child: Container(
              child: Row(children: [
                Container(
                  width: SizeConfig.screenWidth * 0.17,
                  padding: EdgeInsets.only(left: b * 15),
                  constraints: BoxConstraints(
                    minHeight: SizeConfig.screenHeight,
                  ),
                  color: gc,
                  child: Column(
                    children: [
                      SizedBox(height: 25),
                      Container(
                        height: h * 90,
                        width: b * 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        //for circular cached image everywhere

                        /*child: CachedNetworkImage(
                          imageUrl:
                              'https://www.istockphoto.com/photo/beautiful-asian-woman-standing-on-grass-field-with-landscape-of-sunset-in-summer-gm1253129649-365874487?utm_source=pixabay&utm_medium=affiliate&utm_campaign=SRP_image_sponsored&referrer_url=http%3A//pixabay.com/images/search/nature/&utm_term=nature',
                          fit: BoxFit.cover,
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),*/
                      ),
                      sh(65),
                      Stack(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.index = 1;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: widget.index == 1
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(h * 50),
                                      bottomLeft: Radius.circular(h * 50),
                                    ),
                                  ),
                                  width: b * 229,
                                  height: h * 50,
                                  child: Row(children: [
                                    SizedBox(width: b * 26),
                                    SvgPicture.asset(
                                      'images/home.svg',
                                      height:
                                          widget.index == 1 ? h * 24 : h * 20,
                                      color:
                                          widget.index == 1 ? gc : Colors.white,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                    SizedBox(width: b * 26),
                                    Text(
                                      "Home",
                                      style: txtS(
                                          widget.index == 1 ? gc : Colors.white,
                                          widget.index == 1 ? 18 : 16,
                                          widget.index == 1
                                              ? FontWeight.w700
                                              : FontWeight.w400),
                                    )
                                  ]),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.index = 2;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: (widget.index == 2 ||
                                            widget.index == 14)
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(h * 50),
                                      bottomLeft: Radius.circular(h * 50),
                                    ),
                                  ),
                                  width: b * 229,
                                  height: h * 50,
                                  child: Row(children: [
                                    SizedBox(width: b * 26),
                                    SvgPicture.asset(
                                      'images/clean.svg',
                                      height: (widget.index == 2 ||
                                              widget.index == 14)
                                          ? h * 24
                                          : h * 20,
                                      color: (widget.index == 2 ||
                                              widget.index == 14)
                                          ? gc
                                          : Colors.white,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                    SizedBox(width: b * 26),
                                    Text(
                                      "Clean",
                                      style: txtS(
                                          (widget.index == 2 ||
                                                  widget.index == 14)
                                              ? gc
                                              : Colors.white,
                                          (widget.index == 2 ||
                                                  widget.index == 14)
                                              ? 18
                                              : 16,
                                          (widget.index == 2 ||
                                                  widget.index == 14)
                                              ? FontWeight.w700
                                              : FontWeight.w400),
                                    )
                                  ]),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.index = 3;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: (widget.index == 3 ||
                                            widget.index == 13)
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(h * 50),
                                      bottomLeft: Radius.circular(h * 50),
                                    ),
                                  ),
                                  width: b * 229,
                                  height: h * 50,
                                  child: Row(children: [
                                    SizedBox(width: b * 26),
                                    SvgPicture.asset(
                                      'images/3User.svg',
                                      height: (widget.index == 3 ||
                                              widget.index == 13)
                                          ? h * 24
                                          : h * 20,
                                      color: (widget.index == 3 ||
                                              widget.index == 13)
                                          ? gc
                                          : Colors.white,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                    SizedBox(width: b * 26),
                                    Text(
                                      "People",
                                      style: txtS(
                                          (widget.index == 3 ||
                                                  widget.index == 13)
                                              ? gc
                                              : Colors.white,
                                          (widget.index == 3 ||
                                                  widget.index == 13)
                                              ? 18
                                              : 16,
                                          (widget.index == 3 ||
                                                  widget.index == 13)
                                              ? FontWeight.w700
                                              : FontWeight.w400),
                                    )
                                  ]),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.index = 4;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: widget.index == 4
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(h * 50),
                                      bottomLeft: Radius.circular(h * 50),
                                    ),
                                  ),
                                  width: b * 229,
                                  height: h * 50,
                                  child: Row(children: [
                                    SizedBox(width: b * 26),
                                    SvgPicture.asset(
                                      'images/Info.svg',
                                      height:
                                          widget.index == 4 ? h * 24 : h * 20,
                                      color:
                                          widget.index == 4 ? gc : Colors.white,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                    SizedBox(width: b * 26),
                                    Text(
                                      "About Plant",
                                      style: txtS(
                                          widget.index == 4 ? gc : Colors.white,
                                          widget.index == 4 ? 18 : 16,
                                          widget.index == 4
                                              ? FontWeight.w700
                                              : FontWeight.w400),
                                    )
                                  ]),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.index = 5;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: widget.index == 5
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(h * 50),
                                      bottomLeft: Radius.circular(h * 50),
                                    ),
                                  ),
                                  width: b * 229,
                                  height: h * 50,
                                  child: Row(children: [
                                    SizedBox(width: b * 26),
                                    SvgPicture.asset(
                                      'images/robot.svg',
                                      height:
                                          widget.index == 5 ? h * 24 : h * 20,
                                      color:
                                          widget.index == 5 ? gc : Colors.white,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                    SizedBox(width: b * 26),
                                    Text(
                                      "Robot Details",
                                      style: txtS(
                                          widget.index == 5 ? gc : Colors.white,
                                          widget.index == 5 ? 18 : 16,
                                          widget.index == 5
                                              ? FontWeight.w700
                                              : FontWeight.w400),
                                    )
                                  ]),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.index = 6;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: widget.index == 6
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(h * 50),
                                      bottomLeft: Radius.circular(h * 50),
                                    ),
                                  ),
                                  width: b * 229,
                                  height: h * 50,
                                  child: Row(children: [
                                    SizedBox(width: b * 26),
                                    SvgPicture.asset(
                                      'images/event.svg',
                                      height:
                                          widget.index == 6 ? h * 24 : h * 20,
                                      color:
                                          widget.index == 6 ? gc : Colors.white,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                    SizedBox(width: b * 26),
                                    Text(
                                      "Monthly Report",
                                      style: txtS(
                                          widget.index == 6 ? gc : Colors.white,
                                          widget.index == 6 ? 18 : 16,
                                          widget.index == 6
                                              ? FontWeight.w700
                                              : FontWeight.w400),
                                    )
                                  ]),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.index = 7;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: widget.index == 7
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(h * 50),
                                      bottomLeft: Radius.circular(h * 50),
                                    ),
                                  ),
                                  width: b * 229,
                                  height: h * 50,
                                  child: Row(children: [
                                    SizedBox(width: b * 26),
                                    SvgPicture.asset(
                                      'images/Document.svg',
                                      height:
                                          widget.index == 7 ? h * 24 : h * 20,
                                      color:
                                          widget.index == 7 ? gc : Colors.white,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                    SizedBox(width: b * 26),
                                    Text(
                                      "Action List",
                                      style: txtS(
                                          widget.index == 7 ? gc : Colors.white,
                                          widget.index == 7 ? 18 : 16,
                                          widget.index == 7
                                              ? FontWeight.w700
                                              : FontWeight.w400),
                                    )
                                  ]),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.index = 8;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: widget.index == 8
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(h * 50),
                                      bottomLeft: Radius.circular(h * 50),
                                    ),
                                  ),
                                  width: b * 229,
                                  height: h * 50,
                                  child: Row(children: [
                                    SizedBox(width: b * 26),
                                    SvgPicture.asset(
                                      'images/settings.svg',
                                      height:
                                          widget.index == 8 ? h * 24 : h * 20,
                                      color:
                                          widget.index == 8 ? gc : Colors.white,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                    SizedBox(width: b * 26),
                                    Text(
                                      "Mantainence Report",
                                      style: txtS(
                                          widget.index == 8 ? gc : Colors.white,
                                          widget.index == 8 ? 18 : 16,
                                          widget.index == 8
                                              ? FontWeight.w700
                                              : FontWeight.w400),
                                    )
                                  ]),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.index = 10;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: (widget.index == 9 ||
                                            widget.index == 10 ||
                                            widget.index == 11 ||
                                            widget.index == 12)
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(h * 25),
                                      bottomLeft: Radius.circular(h * 25),
                                    ),
                                  ),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: b * 26),
                                  width: b * 229,
                                  child: Column(children: [
                                    Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              widget.index = 10;
                                            });
                                          },
                                          child: Theme(
                                            data: ThemeData(
                                              primaryColor: Colors.white,
                                              unselectedWidgetColor:
                                                  (widget.index == 15 ||
                                                          widget.index == 10 ||
                                                          widget.index == 11 ||
                                                          widget.index == 12)
                                                      ? Colors.green
                                                      : Colors.white,
                                            ),
                                            child: ExpansionTile(
                                              expandedAlignment:
                                                  Alignment.center,
                                              childrenPadding: EdgeInsets.zero,
                                              leading: SvgPicture.asset(
                                                'images/settings.svg',
                                                height: (widget.index == 15 ||
                                                        widget.index == 10 ||
                                                        widget.index == 11 ||
                                                        widget.index == 12)
                                                    ? h * 24
                                                    : h * 20,
                                                color: (widget.index == 15 ||
                                                        widget.index == 10 ||
                                                        widget.index == 11 ||
                                                        widget.index == 12)
                                                    ? gc
                                                    : Colors.white,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                              ),
                                              backgroundColor:
                                                  Colors.transparent,
                                              tilePadding: EdgeInsets.zero,
                                              title: Text(
                                                "Services",
                                                style: txtS(
                                                    (widget.index == 15 ||
                                                            widget.index ==
                                                                10 ||
                                                            widget.index ==
                                                                11 ||
                                                            widget.index == 12)
                                                        ? gc
                                                        : Colors.white,
                                                    (widget.index == 15 ||
                                                            widget.index ==
                                                                10 ||
                                                            widget.index ==
                                                                11 ||
                                                            widget.index == 12)
                                                        ? 18
                                                        : 16,
                                                    (widget.index == 15 ||
                                                            widget.index ==
                                                                10 ||
                                                            widget.index ==
                                                                11 ||
                                                            widget.index == 12)
                                                        ? FontWeight.w700
                                                        : FontWeight.w400),
                                              ),
                                              children: <Widget>[
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      widget.index = 10;
                                                    });
                                                  },
                                                  child: Container(
                                                    height: h * 35,
                                                    width: b * 181,
                                                    decoration: BoxDecoration(
                                                      color: (widget.index ==
                                                                  10 ||
                                                              widget.index ==
                                                                  15)
                                                          ? Color(0xffe7f4eb)
                                                          : Colors.transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              h * 5),
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "Inventory",
                                                      style: txtS(
                                                          gc,
                                                          (widget.index == 10 ||
                                                                  widget.index ==
                                                                      15)
                                                              ? 18
                                                              : 16,
                                                          FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      widget.index = 11;
                                                    });
                                                  },
                                                  child: Container(
                                                    height: h * 35,
                                                    width: b * 181,
                                                    decoration: BoxDecoration(
                                                      color: widget.index == 11
                                                          ? Color(0xffe7f4eb)
                                                          : Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              h * 5),
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "Status",
                                                      style: txtS(
                                                          gc,
                                                          widget.index == 11
                                                              ? 18
                                                              : 16,
                                                          FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      widget.index = 12;
                                                    });
                                                  },
                                                  child: Container(
                                                    height: h * 35,
                                                    width: b * 181,
                                                    decoration: BoxDecoration(
                                                      color: widget.index == 12
                                                          ? Color(0xffe7f4eb)
                                                          : Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              h * 5),
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "People",
                                                      style: txtS(
                                                          gc,
                                                          widget.index == 12
                                                              ? 18
                                                              : 16,
                                                          FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                                sh(26),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    widget.index = 16;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: widget.index == 16
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(h * 50),
                                      bottomLeft: Radius.circular(h * 50),
                                    ),
                                  ),
                                  width: b * 229,
                                  height: h * 50,
                                  child: Row(children: [
                                    SizedBox(width: b * 26),
                                    SvgPicture.asset(
                                      'images/ques.svg',
                                      height:
                                          widget.index == 16 ? h * 24 : h * 20,
                                      color:
                                          widget.index == 16 ? gc : Colors.white,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                    SizedBox(width: b * 26),
                                    Text(
                                      "Help",
                                      style: txtS(
                                          widget.index == 16 ? gc : Colors.white,
                                          widget.index == 16 ? 18 : 16,
                                          widget.index == 16
                                              ? FontWeight.w700
                                              : FontWeight.w400),
                                    )
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          Container(
            width: SizeConfig.screenWidth * 0.83,
            child: _widgetOption[widget.index - 1],
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
