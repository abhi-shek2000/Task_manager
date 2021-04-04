import 'package:flutter/material.dart';
import 'package:todoapp/UI/InTray/IntrayPage.dart';
import 'package:todoapp/model/TaskModel.dart';
import 'package:todoapp/model/global.dart';

// class IntrayWidget extends StatelessWidget {
//   final String title;
//   final String id;
//   String status;
//   String content;
//   IntrayWidget({this.id, this.title, this.status, this.content});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       key: Key(this.id),
//       margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
//       padding: EdgeInsets.only(
//         left: 5,
//         right: 5,
//         top: 5,
//         bottom: 5
//       ),
//       height: 100,
//       decoration: BoxDecoration(
//         color: redColor,
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black,
//             offset: const Offset(0.0, 0.0),
//             blurRadius: 5.0,
//             spreadRadius: 0.0,
//           ),
//         ]
//       ),
//       child: Row(
//         children: [
//           Radio(value: true, groupValue: null, onChanged: (bool value) {  }, ),
//           Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 10, left: 10),
//                 child: Text(title,
//                 style: noteTitle,),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

Widget IntrayWidget (TaskModel todo){
  return Container(
    key: Key(todo.id),
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
          BoxShadow(
            color: Colors.black,
            offset: const Offset(0.0, 0.0),
            blurRadius: 5.0,
            spreadRadius: 0.0,
          ),
        ]
    ),
    child: Row(
      children: [
        Radio(value: true, groupValue: null, onChanged: (bool value) {  }, ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text(todo.title,
                style: noteTitle,),
            ),
          ],
        ),
      ],
    ),
  );

}