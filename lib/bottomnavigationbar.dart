import 'package:colourblocks/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color_box.dart';
import 'gridview.dart';
import 'listgrid2.dart';

class bottomnavigationbar extends StatefulWidget {
  const bottomnavigationbar({super.key});

  @override
  State<bottomnavigationbar> createState() => _bottomnavigationbarState();
}

class _bottomnavigationbarState extends State<bottomnavigationbar> {
  int selectIndex=0;
  List pages=[
    widgets(),
    listgrid2(),
    gridview(),
    colorbox()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[
        selectIndex
      ],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: selectIndex,
        onTap: (value) {
          selectIndex=value!;
          setState(() {

          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favourites"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings"
          )

        ],
      ),
    );
  }
}
