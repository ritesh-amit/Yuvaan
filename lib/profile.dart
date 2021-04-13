import 'package:flutter/material.dart';
import 'package:yu/appBar.dart';
import 'Utils/SizeConfig.dart';
import 'Utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatefulWidget {
  _ProfileState createState() => _ProfileState();
}

bool edit = false;
bool value = false;

class _ProfileState extends State<Profile> {
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
                children: [
                  Container(
                    margin: EdgeInsets.only(left: b * 35),
                    width: b * 189,
                    height: h * 276,
                    padding: EdgeInsets.fromLTRB(b * 10, h * 30, 0, h * 40),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: h * 117,
                          width: b * 117,
                          decoration: BoxDecoration(
                            color: gc,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.10),
                                blurRadius: 10,
                                spreadRadius: 0,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                        ),
                        sh(18),
                        Text(
                          "Member Name",
                          style: txtS(gc, 20, FontWeight.w600),
                        ),
                        sh(25),
                        Text(
                          "Engineer",
                          style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontSize: h * 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: b * 58),
                  Container(
                    width: b * 887,
                    padding: EdgeInsets.fromLTRB(b * 50, h * 43, b * 20, h * 0),
                    height: h * 276,
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
                              "Plant Name",
                              style: txtS(Colors.black, 18, FontWeight.w500),
                            ),
                            Spacer(),
                            Container(
                              width: b * 300,
                              child: Text(
                                "Govind Solar Power Plant",
                                style: txtS(yc, 18, FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                        sh(30),
                        Row(
                          children: [
                            Text(
                              "Phone Number",
                              style: txtS(Colors.black, 18, FontWeight.w500),
                            ),
                            Spacer(),
                            Container(
                              width: b * 300,
                              child: Text(
                                "G8299783604",
                                style: txtS(yc, 18, FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                        sh(30),
                        Row(
                          children: [
                            Text(
                              "Email",
                              style: txtS(Colors.black, 18, FontWeight.w500),
                            ),
                            Spacer(),
                            Container(
                              width: b * 300,
                              child: Text(
                                "ritesh.shuklalmp2018@gmail.com",
                                style: txtS(yc, 18, FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                        sh(30),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Address",
                              style: txtS(Colors.black, 18, FontWeight.w500),
                            ),
                            Spacer(),
                            Container(
                              width: b * 300,
                              child: Text(
                                "ritesh.shuklalmp2018@gmail.com ritesh.shuklalmp2018@gmail.com",
                                style: txtS(yc, 18, FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              sh(36),
              Container(
                margin: EdgeInsets.symmetric(horizontal: b * 35),
                padding: EdgeInsets.fromLTRB(b * 35, h * 28, b * 58, h * 0),
                height: h * 463,
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
                    Row(
                      children: [
                        Text(
                          'Rights',
                          style: txtS(Colors.black, 18, FontWeight.w700),
                        ),
                        Spacer(),
                        //wont be there for team members
                        InkWell(
                          onTap: () {
                            setState(() {
                              edit = !edit;
                            });
                          },
                          child: SvgPicture.asset(
                            'images/Edit.svg',
                            height: h * 16,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ],
                    ),
                    sh(30),
                    Container(
                      height: h * 380,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: 17,
                          itemBuilder: (BuildContext ctxt, int index) {
                            return Column(children: [
                              Row(
                                children: [
                                  Text(
                                    "${(index + 1).toString()}. ",
                                    style:
                                        txtS(Colors.black, 14, FontWeight.w400),
                                  ),
                                  Text(
                                    'Rights Rights Rights Rights Rights Rights Rights Rights ',
                                    style:
                                        txtS(Colors.black, 14, FontWeight.w400),
                                    //if rights not given then the color changes to yc
                                  ),
                                  Spacer(),
                                  edit
                                      ? InkWell(
                                          onTap: () {
                                            setState(() {
                                              value = !value;
                                            });
                                          },
                                          child: Container(
                                            height: h * 20,
                                            width: b * 16,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(h * 4),
                                              border: Border.all(
                                                  color: gc, width: h * 1),
                                              color: value
                                                  ? gc
                                                  : Color(0xffe7faeb),
                                            ),
                                            child: Icon(Icons.check,
                                                color: Colors.white,
                                                size: h * 12),
                                          ),
                                        )
                                      : sh(0),
                                ],
                              ),
                              sh(11),
                              Container(
                                height: h * 1,
                                color: yc.withOpacity(0.4),
                              ),
                              sh(11),
                            ]);
                          }),
                    ),
                  ],
                ),
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
