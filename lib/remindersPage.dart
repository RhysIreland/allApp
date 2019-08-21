import 'package:flutter/material.dart';

class remindersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
      child: InkWell(
        onTap: () {
        Navigator.pop(context);
      },
      ),
      ),
    );
  }

}