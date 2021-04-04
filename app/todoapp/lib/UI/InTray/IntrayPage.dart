import 'package:flutter/material.dart';
import 'package:todoapp/model/TaskModel.dart';
import 'package:todoapp/model/Widgets/IntrayWidget.dart';
import 'package:todoapp/model/global.dart';

class IntraPage extends StatefulWidget {

  @override
  _IntraPageState createState() => _IntraPageState();
}

class _IntraPageState extends State<IntraPage> {
  List<TaskModel> list = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 10; i++){
      list.add(TaskModel(id: (i+1).toString(), title: i.toString()+i.toString()+i.toString()+i.toString()+i.toString()+i.toString()));
    }
  }



  void reorderData(int oldindex, int newindex){
    setState(() {
      if(newindex>oldindex){
        newindex-=1;
      }
      final items =list.removeAt(oldindex);
      list.insert(newindex, items);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(color: darkGrey,
      child: Theme(
        data: ThemeData(
            canvasColor: Colors.transparent,
          shadowColor: Colors.transparent,

        ),
        child: ReorderableListView(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.35),
          children: list.map((todo) {
            return IntrayWidget(todo);
          }).toList(),
          onReorder: reorderData,

        ),
      ),
    );
  }
}


