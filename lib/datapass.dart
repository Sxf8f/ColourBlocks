import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class datapass extends StatefulWidget {
  final String name;
  final String number;
  final String email;
  final String password;
  final String address;
  const datapass({super.key,
    required this.name,
    required this.number,
    required this.email,
    required this.password,
    required this.address});

  @override
  State<datapass> createState() => _datapassState();
}

class _datapassState extends State<datapass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Datapass"),
        centerTitle: true,
      ),
      body: Container(
        height: height*0.9,
        width :width*1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Name : ${widget.name}"),
              Text("Number :${widget.number}"),
              Text("Email :${widget.email}"),
              Text("Password :${widget.password}"),
              Text("Address :${widget.address}"),
            ],
      ),
      ),

    );
  }
}
