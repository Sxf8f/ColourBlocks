import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class tabbar extends StatefulWidget {
  const tabbar({super.key});

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("WhatsApp"),
          bottom: TabBar(
            indicatorColor: Colors.white,
            // indicatorWeight: width*0.03,
            tabs: [
              Tab(text: "Chats"),
              Tab(text: "Status"),
              Tab(text: "Calls")
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(children: [
                Container(
                  color: Colors.black12,
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
