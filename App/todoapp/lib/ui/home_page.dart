import 'package:flutter/material.dart';
import 'package:todoapp/ui/style.dart';
import 'package:todoapp/ui/intray_page.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                     child: IntrayPage(),
                  ),
                  Container(
                    color: Colors.green,
                  ),
                  Container(color: Colors.red),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 50),
                height: (MediaQuery.of(context).size.height * 0.25),
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
              Container(
                height: 80,
                width: 80,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.25 - 40,
                    left: MediaQuery.of(context).size.width * 0.5 - 40),
                child: Container(
                  height: 100,
                  width: 100,
                  child: FloatingActionButton(
                    child: Icon(
                      Icons.add,
                      size: 70,
                    ),
                    backgroundColor: Style.redColor,
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
