import 'package:flutter/material.dart';
import '../Utils/SizeConfig.dart';
import '../Utils/constants.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:google_fonts/google_fonts.dart';

class Otp extends StatelessWidget {
  final TextEditingController phone = TextEditingController();
  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;
    BoxDecoration pinPutDecoration = BoxDecoration(
      color: Colors.transparent,
      border: Border(
        bottom: BorderSide(
          color: Color(0xff858585),
          width: h * 2,
        ),
      ),
    );

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
                        border: Border.all(color: Colors.white, width: h * 1),
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
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      sh(100),
                      Container(
                        margin: EdgeInsets.only(right: b * 40),
                        child: Image.asset(
                          'images/otp.png',
                          height: h * 200,
                        ),
                      ),
                      Text(
                        "OTP Verification",
                        style: txtS(Color(0xff0c9136), 24, FontWeight.w700),
                      ),
                      sh(10),
                      Container(
                        width: b * 350,
                        child: Text(
                          "A 6 Digit One Time Password is sent to your mobile number 9898989898",
                          textAlign: TextAlign.center,
                          style: txtS(Color(0xff858585), 18, FontWeight.w400),
                        ),
                      ),
                      sh(30),
                      Container(
                        width: b * 380,
                        child: PinPut(
                          keyboardType: TextInputType.number,
                          withCursor: true,
                          fieldsCount: 6,
                          textStyle: TextStyle(fontSize: h * 24, color: gc),
                          eachFieldWidth: b * 42.5,
                          eachFieldHeight: h * 42,
                          separator: SizedBox(width: b * 29),
                          focusNode: _pinPutFocusNode,
                          controller: _pinPutController,
                          submittedFieldDecoration: pinPutDecoration,
                          selectedFieldDecoration: pinPutDecoration,
                          followingFieldDecoration: pinPutDecoration,
                        ),
                      ),
                      sh(50),
                      MaterialButton(
                        padding: EdgeInsets.zero,
                        minWidth: b * 400,
                        height: h * 50,
                        onPressed: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: h * 50,
                          width: b * 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(h * 5),
                            color: gc,
                          ),
                          child: Text(
                            'Verify & Proceed',
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
