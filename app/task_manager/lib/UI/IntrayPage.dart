import 'package:flutter/material.dart';
import 'package:task_manager/model/global.dart';

class IntraPage extends StatefulWidget {
  @override
  _IntraPageState createState() => _IntraPageState();
}

class _IntraPageState extends State<IntraPage> {
  @override
  Widget build(BuildContext context) {
    return Container(color: darkGrey,
      child: ListView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.35),
        children: getList(),
      ),
    );
  }

  List<Widget> getList() {
    return [
      Container(
        color: redColor,
        height: 100,
      ),

      Container(
        color: Colors.greenAccent,
        height: 100,
      ),

      Container(
        color: redColor,
        height: 100,
      ),
      Container(
        color: Colors.greenAccent,
        height: 100,
      ),

      Container(
        color: redColor,
        height: 100,
      ),
      Container(
        color: Colors.greenAccent,
        height: 100,
      ),

      Container(
        color: redColor,
        height: 100,
      ),
    ];
  }
}
