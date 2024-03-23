import 'package:colourblocks/page3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => page3(),));
                },
                child: Container(
                  height: width*0.3,
                  width: width*0.3,
                  margin: EdgeInsets.all(width*0.04),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                      color: Colors.lightBlue
                  ),
                ),
              ),
              Container(
                height: width*0.3,
                width: width*0.3,
                margin: EdgeInsets.all(width*0.04),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.03),
                    color: Colors.teal
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
