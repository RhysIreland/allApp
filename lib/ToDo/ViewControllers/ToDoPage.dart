import 'package:flutter/material.dart';

class ToDoPage extends StatelessWidget {
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