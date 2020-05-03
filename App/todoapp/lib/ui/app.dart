import 'package:flutter/material.dart';
import 'package:todoapp/ui/style.dart';

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.rss_feed),
                ),
                Tab(
                  icon: Icon(Icons.perm_identity),
                ),
              ],
              labelColor: Style.darkGreyColor,
              unselectedLabelColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5),
              indicatorColor: Colors.transparent,
            ),
            body: Stack(
              children: <Widget>[
                TabBarView(
                  children: <Widget>[
                    Container(
                      color: Style.darkGreyColor,
                    ),
                    Container(
                      color: Colors.green,
                    ),
                    Container(color: Colors.red),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 50),
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Intray", style: Style.intrayTitleStyle),
                      Container(),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.only(top: 120),
                    child: Container(
                      height: 100,
                      width: 100,
                      child: FloatingActionButton(
                        child: Icon(Icons.add, size: 70,),
                        backgroundColor: Style.redColor,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
