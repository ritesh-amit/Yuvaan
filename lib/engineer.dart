import 'package:flutter/material.dart';
import 'package:yu/appBar.dart';
import 'package:yu/dialogBoxes/dialogBoxAddMember.dart';
import 'Utils/SizeConfig.dart';
import 'Utils/constants.dart';
import 'package:page_view_indicators/linear_progress_page_indicator.dart';
import 'package:page_view_indicators/arrow_page_indicator.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Engineers extends StatefulWidget {
  _EngineersState createState() => _EngineersState();
}

class _EngineersState extends State<Engineers> {
  ScrollController _scrollController = ScrollController();
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  final _pageController2 = PageController();
  final _currentPageNotifier2 = ValueNotifier<int>(0);
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
                            hintText: 'Search By Name',
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              sh(50),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: b * 35),
                    width: b * 456,
                    height: h * 245,
                    padding: EdgeInsets.fromLTRB(b * 33, h * 18, 0, h * 26),
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
                          "Manager",
                          style: txtS(gc, 20, FontWeight.w700),
                        ),
                        sh(16),
                        Row(
                          children: [
                            Container(
                              height: h * 150,
                              width: b * 120,
                              decoration: BoxDecoration(
                                color: gc,
                                borderRadius: BorderRadius.circular(h * 12),
                              ),
                            ),
                            SizedBox(width: b * 27),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nishant Singh",
                                  style:
                                      txtS(Colors.black, 24, FontWeight.w600),
                                ),
                                sh(7),
                                Text(
                                  "ritesh.shuklalmp2018@gmail.com",
                                  style:
                                      txtS(Colors.black, 16, FontWeight.w400),
                                ),
                                sh(11),
                                Text(
                                  "8299783604",
                                  style:
                                      txtS(Colors.black, 16, FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: b * 58),
                  Container(
                    width: b * 638,
                    padding: EdgeInsets.fromLTRB(b * 33, h * 18, b * 17, h * 0),
                    height: h * 245,
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
                          Row(
                            children: [
                              Text(
                                "Engineers",
                                style: txtS(gc, 20, FontWeight.w700),
                              ),
                              Spacer(),
                              //admin and team members don't see this
                              InkWell(
                                onTap: () {
                                  dialogBoxAddMembers(context);
                                },
                                child: Text(
                                  "+Add",
                                  style: txtS(gc, 20, FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Total : 20",
                                style: txtS(yc, 16, FontWeight.w400),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: b * 0, left: b * 0),
                            child: ArrowPageIndicator(
                              rightIcon: Container(
                                height: h * 30,
                                width: b * 30,
                                decoration: BoxDecoration(
                                  color: gc,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.arrow_right_alt,
                                  color: Colors.white,
                                  size: h * 20,
                                ),
                              ),
                              leftIcon: Container(
                                height: h * 30,
                                width: b * 30,
                                decoration: BoxDecoration(
                                  color: gc,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  MdiIcons.keyboardBackspace,
                                  color: Colors.white,
                                  size: h * 20,
                                ),
                              ),
                              isJump: false,
                              pageController: _pageController2,
                              currentPageNotifier: _currentPageNotifier2,
                              itemCount: 3,
                              child: _buildPageView2(
                                  _pageController2, _currentPageNotifier2),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
              sh(58),
              Padding(
                padding: EdgeInsets.only(left: b * 35, right: b * 45),
                child: Row(
                  children: [
                    Text(
                      "Team Members",
                      style: txtS(gc, 22, FontWeight.w700),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        dialogBoxAddMembers(context);
                      },
                      child: Text(
                        "+ Add",
                        style: txtS(gc, 22, FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: b * 35, right: b * 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Total : 20",
                      style: txtS(yc, 16, FontWeight.w400),
                    ),
                  ],
                ),
              ),
              sh(35),
              Padding(
                padding: EdgeInsets.only(right: b * 35, left: b * 5),
                child: ArrowPageIndicator(
                  rightIcon: Container(
                    height: h * 30,
                    width: b * 30,
                    decoration: BoxDecoration(
                      color: gc,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                      size: h * 20,
                    ),
                  ),
                  leftIcon: Container(
                    height: h * 30,
                    width: b * 30,
                    decoration: BoxDecoration(
                      color: gc,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      MdiIcons.keyboardBackspace,
                      color: Colors.white,
                      size: h * 20,
                    ),
                  ),
                  isJump: false,
                  pageController: _pageController,
                  currentPageNotifier: _currentPageNotifier,
                  itemCount: 3,
                  child: _buildPageView(_pageController, _currentPageNotifier),
                ),
              ),
              sh(60),
              Container(
                child: _buildLinearProgressIndicator(null),
              ),
            ]),
          ),
        ]),
      ),
    );
  }

//to manage indexing rest done
  _buildPageView(
      PageController pageController, ValueNotifier currentPageNotifier) {
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Container(
      color: Colors.transparent,
      height: h * 200,
      width: b * 1100,
      child: PageView.builder(
          itemCount: 3,
          controller: _pageController,
          itemBuilder: (BuildContext context, int index) {
            return ListView.builder(
                controller: _scrollController,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemCount: 5,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: h * 8),
                    width: b * 220,
                    child: Column(children: [
                      Container(
                        alignment: Alignment.center,
                        height: h * 102,
                        width: h * 102,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: gc,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 10,
                              spreadRadius: 0,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                      ),
                      sh(8),
                      Container(
                        alignment: Alignment.center,
                        width: b * 200,
                        child: Text(
                          "Nishant Singh",
                          overflow: TextOverflow.ellipsis,
                          style: txtS(Colors.black, 20, FontWeight.w600),
                        ),
                      ),
                      sh(7),
                      Container(
                        alignment: Alignment.center,
                        width: b * 200,
                        child: Text(
                          "ritesh.shuklalmp2018@gmail.com amittttttttt",
                          overflow: TextOverflow.ellipsis,
                          style: txtS(Colors.black, 16, FontWeight.w400),
                        ),
                      ),
                      sh(3),
                      Text(
                        "8299783604",
                        style: txtS(Colors.black, 16, FontWeight.w400),
                      ),
                    ]),
                  );
                });
          },
          onPageChanged: (int index) {
            _currentPageNotifier.value = index;
          }),
    );
  }

  _buildPageView2(
      PageController pageController, ValueNotifier currentPageNotifier) {
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Container(
      color: Colors.transparent,
      height: h * 180,
      width: b * 600,
      child: PageView.builder(
          itemCount: 3,
          controller: _pageController2,
          itemBuilder: (BuildContext context, int index) {
            return ListView.builder(
                controller: _scrollController,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemCount: 2,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: h * 8),
                    width: b * 240,
                    child: Column(children: [
                      Container(
                        alignment: Alignment.center,
                        height: h * 79,
                        width: h * 79,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: gc,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 10,
                              spreadRadius: 0,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                      ),
                      sh(8),
                      Container(
                        alignment: Alignment.center,
                        width: b * 200,
                        child: Text(
                          "Nishant Singh",
                          overflow: TextOverflow.ellipsis,
                          style: txtS(Colors.black, 20, FontWeight.w600),
                        ),
                      ),
                      sh(7),
                      Container(
                        alignment: Alignment.center,
                        width: b * 200,
                        child: Text(
                          "ritesh.shuklalmp2018@gmail.com amittttttttt",
                          overflow: TextOverflow.ellipsis,
                          style: txtS(Colors.black, 16, FontWeight.w400),
                        ),
                      ),
                      sh(3),
                      Text(
                        "8299783604",
                        style: txtS(Colors.black, 16, FontWeight.w400),
                      ),
                    ]),
                  );
                });
          },
          onPageChanged: (int index) {
            _currentPageNotifier2.value = index;
          }),
    );
  }

  _buildLinearProgressIndicator(int itemCount) {
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(h * 30),
      ),
      width: b * 1125,
      height: h * 8,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) =>
            LinearProgressPageIndicator(
          itemCount: 3,
          backgroundColor: Color(0xfff1f1f1),
          currentPageNotifier: _currentPageNotifier,
          progressColor: gc,
          width: b * 1123,
          height: h * 8,
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
