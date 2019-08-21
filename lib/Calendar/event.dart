import 'package:flutter/material.dart';
import 'dart:convert';

class Event {
  int id;
  String event;
  DateTime date;
  DateTime time;
  Color event_color;

  Event(this.id, this.event, this.date, this.time, this.event_color);

  Map<String, dynamic> toMap(bool forUpdate) {
    var data = {
      'event': utf8.encode(event),
      'date': epochFromDate(date),
      'time': epochFromDate(time),
      'event_color': event_color.value,
    };
    if(forUpdate){
      data["id"] = this.id;
    }
    return data;
  }

  int epochFromDate(DateTime dt) {
    return dt.millisecondsSinceEpoch ~/ 1000;
  }

  @override toString() {
    return {
      'id': id,
      'event': epochFromDate(date),
      'time': epochFromDate(time),
      'event_color': event_color.toString(),
    }.toString();
  }
}