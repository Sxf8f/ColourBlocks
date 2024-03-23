import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class dropdown extends StatefulWidget {
  const dropdown({super.key});

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  String? dropdownValue;
  var phones=[
    "Apple",
    "Samsung",
    "Pixel",
    "Xiaomi",
    "Oneplus"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:    AppBar(
         title: Center(child: Text("DropDown")),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Container(
            height: width*0.2,
            width: width*1,
            child: DropdownButton(
              isExpanded: true,
              hint: Text("Selected items"),
                icon:Icon(Icons.keyboard_arrow_down_outlined),
                value: dropdownValue,
                items: phones.map((String phone){
                  return DropdownMenuItem(
                    value: phone,
                      child: Text(phone!));
                }).toList(),
                onChanged: (phonss) {
                  setState(() {
                    dropdownValue=phonss;
                  });
                },
            ),
          )
        ],
      ),
    );
  }
}
