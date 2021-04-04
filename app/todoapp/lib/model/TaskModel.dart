import 'package:flutter/material.dart';

class TaskModel {
  // List<TaskModel> tasks;
  String note;
  String id;
  DateTime timeToComplete;
  bool completed_status;
  String title;
  String repeat;
  DateTime deadLine;
  List<DateTime> reminders;
  



  TaskModel(
      {@required this.id,
        @required this.title,
        this.completed_status,
        this.note});
}