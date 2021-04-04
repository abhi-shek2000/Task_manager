import 'package:flutter/material.dart';
import 'package:task_manager/model/global.dart';

class IntrayWidget extends StatelessWidget {
  final String title;

  IntrayWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
      padding: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 5,
        bottom: 5
      ),
      height: 100,
      decoration: BoxDecoration(
        color: redColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          //BoxShadow
          BoxShadow(
            color: Colors.black,
            offset: const Offset(0.0, 0.0),
            blurRadius: 5.0,
            spreadRadius: 0.0,
          ), //Box
        ]
      ),
      child: Row(
        children: [
          Radio(value: true, groupValue: null, onChanged: (bool value) {  }, ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Text(title,
                style: noteTitle,),
              ),
            ],
          ),
        ],
      ),

      // child: Text("Hello"),
    );
  }
}
