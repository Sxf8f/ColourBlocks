import 'package:flutter/material.dart';

class colorbox extends StatefulWidget {
  const colorbox({super.key});

  @override
  State<colorbox> createState() => _colorboxState();
}

class _colorboxState extends State<colorbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title:Center(child: Text("ColorBox")),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 186,
                  width: 120,
                  color: Colors.greenAccent,
                ),
                Container(
                  height: 186,
                  width: 120,
                  color: Colors.greenAccent,
                ),
                Container(
                  height: 186,
                  width: 120,
                  color: Colors.amberAccent,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 186,
                  width: 120,
                  color: Colors.greenAccent,
                ),
                Container(
                  height: 186,
                  width: 120,
                  color: Colors.blue,
                ),
                Container(
                  height: 186,
                  width: 120,
                  color: Colors.purple,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 188,
                  width: 120,
                  color: Colors.green,
                ),
                Container(
                  height: 188,
                  width: 120,
                  color: Colors.purple,
                ),
                Container(
                  height: 188,
                  width: 120,
                  color: Colors.purple,
                ),
              ],
            ),

          ],

        ),

      );
  }
}