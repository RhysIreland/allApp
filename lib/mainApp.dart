import 'package:flutter/material.dart';

import 'App.dart';

class mainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: App(),
      theme: ThemeData(
        brightness: Brightness.dark,
      )
    );
  }
}