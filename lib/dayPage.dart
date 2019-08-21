import 'package:flutter/material.dart';

class dayPage extends StatelessWidget {
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