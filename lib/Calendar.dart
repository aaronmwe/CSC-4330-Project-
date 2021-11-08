import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: Center(child: TableCalendar(
          focusedDay: DateTime.now(),
          firstDay: DateTime(1950),
          lastDay: DateTime(2050),
        ),
        ),
      );
}
