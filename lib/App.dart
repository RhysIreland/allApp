import 'package:flutter/material.dart';
import './Calendar/Calendar.dart';
import './ToDo/ToDo.dart';
import 'reminders.dart';
import 'day.dart';
import './Notes/notes.dart';
import 'mail.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 50),
        children: <Widget>[
          day(),
          spacer(),
          calendar(),
          spacer(),
          mail(),
          spacer(),
          ToDo(),
          spacer(),
          reminders(),
          spacer(),
          notes(),
          spacer(),
        ],
      ),
      ),
    );
  }

}

class spacer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      //color: Colors.black,
    );
  }
}