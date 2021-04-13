import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:yu/dialogBoxes/dialogBoxAddMember.dart';
import 'Utils/constants.dart';
import 'Utils/sizeConfig.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalendarReport extends StatefulWidget {
  @override
  _CalendarReportState createState() => _CalendarReportState();
}

class _CalendarReportState extends State<CalendarReport> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: b * 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar(
              initialCalendarFormat: CalendarFormat.month,
              calendarStyle: CalendarStyle(
                weekdayStyle: TextStyle(color: Colors.white),
                weekendStyle: TextStyle(color: Colors.white),
                canEventMarkersOverflow: true,
              ),
              rowHeight: h * 77,
              headerStyle: HeaderStyle(
                leftChevronIcon:
                    Icon(Icons.chevron_left, color: gc, size: h * 28),
                rightChevronIcon:
                    Icon(Icons.chevron_right, color: gc, size: h * 28),
                formatButtonVisible: false,
                centerHeaderTitle: true,
                titleTextStyle: txtS(gc, 22, FontWeight.w700),
                formatButtonShowsNext: false,
              ),
              startingDayOfWeek: StartingDayOfWeek.sunday,
              builders: CalendarBuilders(
                dayBuilder: (context, date, events) => Container(
                  margin:
                      EdgeInsets.symmetric(vertical: h * 2, horizontal: b * 4),
                  alignment: Alignment.center,
                  child: Stack(children: [
                    /*Positioned(
                      top: h * 10,
                      right: 0,
                      child: marker(),
                    ),*/
                    Padding(
                      padding: EdgeInsets.only(right: b * 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            date.day.toString(),
                            style: txtS(yc, 20, FontWeight.w500),
                          ),
                          sh(5),
                          Text(
                            "100%",
                            style: txtS(Colors.black, 14, FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                weekendDayBuilder: (context, date, events) => Container(
                  margin:
                      EdgeInsets.symmetric(vertical: h * 2, horizontal: b * 4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffe7f4eb),
                    borderRadius: BorderRadius.circular(h * 5),
                  ),
                  child: Stack(children: [
                    /*Positioned(
                      top: h * 10,
                      right: 0,
                      child: marker(),
                    ),*/
                    Padding(
                      padding: EdgeInsets.only(right: b * 6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            date.day.toString(),
                            style: txtS(gc, 20, FontWeight.w500),
                          ),
                          sh(5),
                          Text(
                            "100%",
                            style: txtS(Colors.black, 14, FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                outsideWeekendDayBuilder: (context, date, events) => Container(
                  margin:
                      EdgeInsets.symmetric(vertical: h * 2, horizontal: b * 4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(h * 5),
                  ),
                  child: Stack(children: [
                    /*Positioned(
                      top: h * 10,
                      right: 0,
                      child: marker(),
                    ),*/
                    Padding(
                      padding: EdgeInsets.only(right: b * 6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            date.day.toString(),
                            style:
                                txtS(yc.withOpacity(0.7), 18, FontWeight.w500),
                          ),
                          sh(5),
                          Text(
                            "100%",
                            style: txtS(Colors.black, 14, FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                outsideDayBuilder: (context, date, events) => Container(
                  margin:
                      EdgeInsets.symmetric(vertical: h * 2, horizontal: b * 4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(h * 5),
                  ),
                  child: Stack(children: [
                    /*Positioned(
                      top: h * 10,
                      right: 0,
                      child: marker(),
                    ),*/
                    Padding(
                      padding: EdgeInsets.only(right: b * 6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            date.day.toString(),
                            style:
                                txtS(yc.withOpacity(0.7), 18, FontWeight.w500),
                          ),
                          sh(5),
                          Text(
                            "100%",
                            style: txtS(Colors.black, 14, FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                selectedDayBuilder: (context, date, events) => Container(
                  margin:
                      EdgeInsets.symmetric(vertical: h * 2, horizontal: b * 4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: gc,
                    borderRadius: BorderRadius.circular(h * 5),
                  ),
                  child: Stack(children: [
                    /* Positioned(
                      top: h * 10,
                      right: 0,
                      child: marker(),
                    ),*/
                    Padding(
                      padding: EdgeInsets.only(right: b * 6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            date.day.toString(),
                            style: txtS(Colors.white, 20, FontWeight.w600),
                          ),
                          sh(5),
                          Text(
                            "100%",
                            style: txtS(Colors.black, 14, FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                todayDayBuilder: (context, date, events) => Container(
                  margin:
                      EdgeInsets.symmetric(vertical: h * 2, horizontal: b * 4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: gc,
                    borderRadius: BorderRadius.circular(h * 5),
                  ),
                  child: Stack(children: [
                    /* Positioned(
                      top: h * 10,
                      right: 0,
                      child: marker(),
                    ),*/
                    Padding(
                      padding: EdgeInsets.only(right: b * 6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            date.day.toString(),
                            style: txtS(Colors.white, 20, FontWeight.w600),
                          ),
                          sh(5),
                          Text(
                            "100%",
                            style: txtS(Colors.black, 14, FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                dowWeekendBuilder: (context, day) => Container(
                  padding: EdgeInsets.symmetric(vertical: h * 7),
                  margin: EdgeInsets.only(bottom: h * 20, right: b * 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffe7f4eb),
                    borderRadius: BorderRadius.circular(h * 5),
                  ),
                  child: Text(
                    day.toString(),
                    style: txtS(gc, 20, FontWeight.w400),
                  ),
                ),
                dowWeekdayBuilder: (context, day) => Container(
                  padding: EdgeInsets.symmetric(vertical: h * 7),
                  margin: EdgeInsets.only(bottom: h * 20, right: b * 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(h * 5),
                  ),
                  child: Text(
                    day.toString(),
                    style: txtS(yc, 20, FontWeight.w400),
                  ),
                ),
              ),
              calendarController: _controller,
            ),
          ],
        ),
      ),
    );
  }

  Widget marker() {
    var h = SizeConfig.screenHeight / 900;
    var b = SizeConfig.screenWidth / 1440;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(
          'images/plus.svg',
          height: h * 18,
          allowDrawingOutsideViewBox: true,
        ),
      ],
    );
  }
}
