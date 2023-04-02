import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:ui_challenge_medium/const.dart';

class CustomCalendar extends StatelessWidget {
  const CustomCalendar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      onDaySelected: (selectedDay, focusedDay) {},
      focusedDay: DateTime.now(),
      firstDay: DateTime.now(),
      lastDay: DateTime(2023, 12, 31),
      calendarFormat: CalendarFormat.month,
      headerStyle: const HeaderStyle(
        titleTextStyle: TextStyle(
          color: Utils.kWhiteColor,
          fontSize: 20.0,
        ),
        decoration: BoxDecoration(
          color: Utils.kPrimaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        formatButtonTextStyle:
        TextStyle(color: Utils.kPrimaryColor, fontSize: 16.0),
        formatButtonDecoration: BoxDecoration(
          color: Utils.kWhiteColor,
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        leftChevronIcon: Icon(
          Icons.chevron_left,
          color: Utils.kWhiteColor,
          size: 28,
        ),
        rightChevronIcon: Icon(
          Icons.chevron_right,
          color: Utils.kWhiteColor,
          size: 28,
        ),
      ),
      calendarStyle: const CalendarStyle(
        selectedDecoration: BoxDecoration(
          color: Utils.kPrimaryColor,
          shape: BoxShape.circle,
        ),
        todayDecoration: BoxDecoration(
          color: Utils.kPrimaryColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
