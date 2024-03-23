import 'package:colourblocks/page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Page1")),
        backgroundColor: Colors.lightBlue,
      ),
      body: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => page2(),));
          // Navigator.pop(context);
          // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>page2()),  ModalRoute.withName("/"));
          // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>page2()), (route) => false);
        },
        child: Container(
          height: width*0.3,
          width: width*0.3,
          margin: EdgeInsets.all(width*0.04),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width*0.03),
              color: Colors.grey
          ),
        ),
      ),
    );
  }
}
