import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class tabbar2 extends StatefulWidget {
  const tabbar2({super.key});

  @override
  State<tabbar2> createState() => _tabbar2State();
}

class _tabbar2State extends State<tabbar2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("WhatsApp"),
        ),
        body: Column(
          children: [
            Container(
              height: width*0.12,
              width: width*1,
              margin: EdgeInsets.all(width*0.03),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(width*0.03)
              ),
              child: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(width*0.03)
                ),
                tabs: [
                  Tab(text: "A"),
                  Tab(text: "B"),
                  Tab(text: "C")
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                Container(
                  color: Colors.black26,
                ),
                Container(
                  color: Colors.lightBlue,
                ),
                Container(
                  color: Colors.lightGreen,
                ),

              ]),
            )
          ],
        ),
      ),
    );
  }
}
