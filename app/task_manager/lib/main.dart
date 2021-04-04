import 'package:flutter/material.dart';
import 'file:///D:/mainProjects/taskManagerApp/app/task_manager/lib/UI/InTray/IntrayPage.dart';
import 'model/global.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.yellow,
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: new Scaffold(
            body: Stack(
              children: [
            TabBarView(
              children: [
                IntraPage(),
                new Container(
                  color: Colors.lightGreen,
                ),
                new Container(
                  color: Colors.red,
                ),
              ],
            ),
                Container(
                  padding: EdgeInsets.only(left: 50),
                  height: MediaQuery.of(context).size.height * 0.20,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Intray",
                        style: IntrayStyle,
                      ),
                      Container(),

                    ],
                  ),
                ),
                Container(
                  height: 75,
                  width: 70,
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.20 - 35, left: MediaQuery.of(context).size.width * 0.5 - 35),
                  child: FloatingActionButton(
                      onPressed: (){},
                    child: Icon(Icons.add, size: 45,),
                    backgroundColor: redColor,

                  ),
                ),
              ]
      ),
            appBar: new TabBar(
              tabs: [
                Tab(
                  icon: new Icon(Icons.home),
                ),
                Tab(
                  icon: new Icon(Icons.perm_identity),
                ),
                Tab(icon: new Icon(Icons.settings),)
              ],
              labelColor: Colors.black,
              unselectedLabelColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.transparent,
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
