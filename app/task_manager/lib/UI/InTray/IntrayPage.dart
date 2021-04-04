import 'package:flutter/material.dart';
import 'package:task_manager/model/Widgets/IntrayWidget.dart';
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
    List<IntrayWidget> list = [];
    for (int i = 0; i < 10; i++){
        list.add(new IntrayWidget(title: "Note Title"));
    }
    return list;
  }
}
