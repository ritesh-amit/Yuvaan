import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:yu/dialogBoxes/dialogBoxAddMember.dart';
import 'Utils/constants.dart';
import 'Utils/sizeConfig.dart';

class CalendarClean extends StatefulWidget {
  @override
  _CalendarCleanState createState() => _CalendarCleanState();
}

class _CalendarCleanState extends State<CalendarClean> {
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
        padding: EdgeInsets.symmetric(horizontal: b * 50),
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
          children: <Widget>[
            TableCalendar(
              initialCalendarFormat: CalendarFormat.month,
              calendarStyle: CalendarStyle(
                weekdayStyle: TextStyle(color: Colors.white),
                weekendStyle: TextStyle(color: Colors.white),
                canEventMarkersOverflow: true,
              ),
              rowHeight: h * 45,
              headerStyle: HeaderStyle(
                leftChevronIcon:
                    Icon(Icons.chevron_left, color: gc, size: h * 24),
                rightChevronIcon:
                    Icon(Icons.chevron_right, color: gc, size: h * 24),
                formatButtonVisible: false,
                centerHeaderTitle: true,
                titleTextStyle: txtS(gc, 18, FontWeight.w700),
                formatButtonShowsNext: false,
              ),
              startingDayOfWeek: StartingDayOfWeek.sunday,
              builders: CalendarBuilders(
                dayBuilder: (context, date, events) => Container(
                  margin:
                      EdgeInsets.symmetric(vertical: h * 2, horizontal: b * 4),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        date.day.toString(),
                        style: txtS(yc, 14, FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                weekendDayBuilder: (context, date, events) => Container(
                  margin:
                      EdgeInsets.symmetric(vertical: h * 2, horizontal: b * 4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffe7f4eb),
                    borderRadius: BorderRadius.circular(h * 5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      marker(),
                      Text(
                        date.day.toString(),
                        style: txtS(gc, 14, FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                selectedDayBuilder: (context, date, events) => Container(
                  margin:
                      EdgeInsets.symmetric(vertical: h * 2, horizontal: b * 4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: gc,
                    borderRadius: BorderRadius.circular(h * 5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        date.day.toString(),
                        style: txtS(Colors.white, 16, FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                todayDayBuilder: (context, date, events) => Container(
                  margin:
                      EdgeInsets.symmetric(vertical: h * 2, horizontal: b * 4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: gc,
                    borderRadius: BorderRadius.circular(h * 5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        date.day.toString(),
                        style: txtS(Colors.white, 16, FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                dowWeekendBuilder: (context, day) => Container(
                  padding: EdgeInsets.symmetric(vertical: h * 4),
                  margin: EdgeInsets.only(bottom: h * 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffe7f4eb),
                    borderRadius: BorderRadius.circular(h * 5),
                  ),
                  child: Text(
                    day.toString(),
                    style: txtS(gc, 14, FontWeight.w400),
                  ),
                ),
                dowWeekdayBuilder: (context, day) => Container(
                  padding: EdgeInsets.symmetric(vertical: h * 4),
                  margin: EdgeInsets.only(bottom: h * 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(h * 5),
                  ),
                  child: Text(
                    day.toString(),
                    style: txtS(yc, 14, FontWeight.w400),
                  ),
                ),
              ),
              calendarController: _controller,
            ),
            sh(25),
            Text(
              'Days with Instant Cleaning',
              style: txtS(gc, 16, FontWeight.w400),
            ),
            sh(9),
            Container(
              height: h * 255,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: 7,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Column(children: [
                      sh(10),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: b * 17, vertical: h * 17),
                        margin: EdgeInsets.only(bottom: h * 9),
                        decoration: BoxDecoration(
                          color: Color(0xfff5f5f5),
                          borderRadius: BorderRadius.circular(h * 10),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'DD/MM/YY',
                              style: txtS(yc, 18, FontWeight.w700),
                            ),
                            Spacer(),
                            Text(
                              '00:00 AM',
                              style: txtS(yc, 14, FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ]);
                  }),
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
        Container(
          height: h * 7,
          width: b * 7,
          decoration: BoxDecoration(
            color: gc,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: b * 2),
      ],
    );
  }
}
