import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page3"),
      ),
      body: Container(
        height: width*0.3,
        width: width*0.3,
        margin: EdgeInsets.all(width*0.04),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width*0.03),
            color: Colors.green
        ),
      ),
    );
  }
}
