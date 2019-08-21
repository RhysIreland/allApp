import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:table_calendar/table_calendar.dart';
import 'event.dart';


class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        brightness: Brightness.dark,
        //actions: _appBarActions(),
        elevation: 1,
        centerTitle: true,
        title: Text("Calendar", style: TextStyle(color: Colors.white),),
      ),
      body: SafeArea(child: _body(), right: true, left: true, bottom: true, top: true,),
    );
  }

  Widget _body() {
    return Container(
      child: Column(
        children: <Widget>[
          TableCalendar(
            calendarController: CalendarController(),
            availableGestures: AvailableGestures.horizontalSwipe,
            calendarStyle: CalendarStyle(
              outsideStyle: TextStyle(color: Colors.white12),
              outsideWeekendStyle: TextStyle(color: Colors.white10),
              todayColor: Colors.transparent,
              selectedColor: Color(0xFF2196F3), //0xFF2196F3 
              markersColor: Colors.black,
              markersMaxAmount: 4,
              todayStyle: TextStyle(color: Colors.blue),
            ),
            startingDayOfWeek: StartingDayOfWeek.monday,
            headerStyle: HeaderStyle(
              centerHeaderTitle: true,
              formatButtonVisible: false,
              titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
              leftChevronIcon: Icon(Icons.chevron_left, color: Colors.transparent,),
              rightChevronIcon: Icon(Icons.chevron_right, color: Colors.transparent),
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              dowTextBuilder: (date, locale) => DateFormat.EEEE(locale).format(date)[0],
              weekdayStyle: TextStyle(color: Colors.blue),
              weekendStyle: TextStyle(color: Colors.blue)
            ),
            events: _events,
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: Text(
              "$OnDaySelected",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(
            height: 10,
            child: Center(
              child: Container(
                margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                height: 3,
                color: Color(0x1FFFFFFF), //0x1FFFFFFF is the divider colour
              ),
            ),
          ),
          Container(
            height: 288,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: <Widget>[
               
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              backgroundColor: Colors.blue,
              elevation: 1,
              focusColor: Colors.blueAccent,
              foregroundColor: Colors.white,
              mini: true,
              onPressed: () => print("hey"),//_createNewEvents(context),
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }

  // void _createNewEvents(BuildContext ctx) {
  //   var newEvent = new Event(-1, "", DateTime.now(), DateTime.now(), Colors.white);
  //   Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => EventPage(newEvent)));  
  // }
  
}


Map<DateTime, List> _events = {
  DateTime.utc(2019, 8, 17): ["code this dumb bitch app"]
};

// final _selectedDay = DateTime.now();

// List _selectedEvents = _events[_selectedDay] ?? [];

// Widget _buildEventList() {
//     return ListView(
//       children: _selectedEvents
//           .map((event) => Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(width: 0.8),
//                   borderRadius: BorderRadius.circular(12.0),
//                 ),
//                 margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
//                 child: ListTile(
//                   title: Text(event.toString()),
//                   onTap: () => print('$event tapped!'),
//                 ),
//               ))
//           .toList(),
//     );
//   }