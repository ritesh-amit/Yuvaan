import 'package:flutter/material.dart';
import 'package:yu/loginPages/otp.dart';
import '../Utils/SizeConfig.dart';
import '../Utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  final TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: h * 100, horizontal: b * 250),
          height: h * 700,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(h * 20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 40,
                spreadRadius: 0,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: h * 700,
                    width: b * 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(h * 20),
                        bottomLeft: Radius.circular(h * 20),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff62b47f),
                          Color(0xff004b1b),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      image: DecorationImage(
                        image: AssetImage('images/logo.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Column(
                      children: [
                        sh(65),
                        Container(
                          height: h * 265,
                          width: b * 267,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/logo1.png'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        sh(94),
                        Text(
                          "YUVAAN",
                          style: GoogleFonts.orbitron(
                            fontSize: h * 36,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Vysion Technologies",
                          style: txtS(Colors.white, 16, FontWeight.w400),
                        ),
                        sh(27),
                        Container(
                          alignment: Alignment.center,
                          height: h * 35,
                          width: b * 200,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.white, width: h * 1),
                            borderRadius: BorderRadius.circular(h * 40),
                          ),
                          child: Text(
                            "Visit Vysion Website",
                            style: txtS(Colors.white, 16, FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      sh(100),
                      Container(
                        margin: EdgeInsets.only(right: b * 30),
                        child: Image.asset(
                          'images/mob.png',
                          height: h * 200,
                        ),
                      ),
                      Text(
                        "Verify Your Number",
                        style: txtS(gc, 24, FontWeight.w700),
                      ),
                      sh(10),
                      Text(
                        "Enter Your Mobile Number",
                        style: txtS(Color(0xff858585), 18, FontWeight.w400),
                      ),
                      sh(50),
                      Container(
                        alignment: Alignment.center,
                        width: b * 400,
                        height: h * 50,
                        padding: EdgeInsets.symmetric(horizontal: b * 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: gc, width: 1),
                          borderRadius: BorderRadius.circular(h * 5),
                        ),
                        child: TextField(
                          controller: phone,
                          style: txtS(gc, 20, FontWeight.w500),
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: 'Phone',
                            //labelText: 'Phone',
                            labelStyle: TextStyle(
                              fontSize: h * 20,
                              color: gc,
                              fontWeight: FontWeight.w500,
                            ),
                            hintStyle: TextStyle(
                              fontSize: h * 20,
                              color: gc,
                              fontWeight: FontWeight.w500,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                      sh(40),
                      MaterialButton(
                        padding: EdgeInsets.zero,
                        minWidth: b * 400,
                        height: h * 50,
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return Otp();
                            }),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: h * 50,
                          width: b * 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(h * 5),
                            color: gc,
                          ),
                          child: Text(
                            'Proceed',
                            style: txtS(Colors.white, 18, FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
