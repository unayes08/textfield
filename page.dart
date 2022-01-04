import 'package:flutter/material.dart';
import 'text.dart';
class page extends StatefulWidget {
 page({this.data1,this.data2,this.data3});
  var data1;var data2;var data3;
  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.account_circle_outlined,size: 30,),text: "Name",),
              Tab(icon: Icon(Icons.message,size: 30,),text: "Email",),
              Tab(icon: Icon(Icons.password,size: 30,),text: "Password",)
            ]
            ),
          ),
          body: TabBarView(children:
          [
            Center(
              child: Text(widget.data1),
            ),
            Center(
              child: Text(widget.data2),
            ),
            Center(
              child: Text(widget.data3),
            ),
          ]
          ),
        )
    );
  }
}
