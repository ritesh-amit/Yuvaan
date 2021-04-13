import 'package:flutter/material.dart';
import 'Utils/SizeConfig.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Utils/constants.dart';

class Test extends StatefulWidget {
  _TestState createState() => _TestState();
}

bool edit = false;
bool value = false;

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: gc,
        body: Column(children: [
          RotatedBox(
            quarterTurns: 3,
            child: Container(
              width: b * 600,
              height: h * 230,
              child: PreferredSize(
                preferredSize: Size(b * 600, h * 230),
                child: TabBar(
                    indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(h * 50),
                    ),
                    tabs: [
                      Tab(
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: Text(
                            'Managers',
                            style: txtS(Colors.black, 20, FontWeight.w500),
                          ),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Tab(
                          child: Text(
                            'Admins',
                            style: txtS(Colors.black, 20, FontWeight.w500),
                          ),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Tab(
                          child: Text(
                            'Admins',
                            style: txtS(Colors.black, 20, FontWeight.w500),
                          ),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 1,
                        child: Tab(
                          child: Text(
                            'Admins',
                            style: txtS(Colors.black, 20, FontWeight.w500),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
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
