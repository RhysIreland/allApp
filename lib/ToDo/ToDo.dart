import 'package:flutter/material.dart';
import './ViewControllers/ToDoPage.dart';


class ToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
       children: [
        Container(
          height: (MediaQuery.of(context).size.height)*0.125,
          width: MediaQuery.of(context).size.width,
          child: Align(
            alignment: Alignment(1,1),
            child: bottomBox(),
          ), 
        ),
        Container(
          child: Align(
            alignment: Alignment(0.7,0.5),
            child: topBox(),
          ), 
        ),
          IconButton(
            icon: Icon(Icons.clear_all),
            color: Colors.green,
            iconSize: (MediaQuery.of(context).size.height)*0.1125,
            padding: EdgeInsets.only(right: 15),
            onPressed: () {
              Route route = MaterialPageRoute(builder: (context) => ToDoPage());
              Navigator.push(context, route);
            },
          ),
       ],
      );
  }

}

class topBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height)*0.1,
      width: (MediaQuery.of(context).size.width)*0.7,
      color: Colors.green,
      child: InkWell(
      onTap: () {
        Route route = MaterialPageRoute(builder: (context) => ToDoPage());
        Navigator.push(context, route);
      },
      child: Text(
        'To-Do',
        textAlign: TextAlign.center,
        textScaleFactor: 5,
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
      ),
    ),
    );
  }
}

class bottomBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height)*0.1,
      width: (MediaQuery.of(context).size.width)*0.7,
      color: Colors.greenAccent,
      child: InkWell(
      onTap: () {
        Route route = MaterialPageRoute(builder: (context) => ToDoPage());
        Navigator.push(context, route);
      },
      ),
    );
  }
}