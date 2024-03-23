import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class page4 extends StatefulWidget {
  const page4({super.key});

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: width*0.5,
        width: width*0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width*0.03),
          color: Colors.grey
        ),
      ),
    );
  }
}
