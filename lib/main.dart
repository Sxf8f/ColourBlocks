import 'package:colourblocks/color_box.dart';
import 'package:colourblocks/datapass.dart';
import 'package:colourblocks/dropdown.dart';
import 'package:colourblocks/listandgrid3.dart';
import 'package:colourblocks/listgrid2.dart';
import 'package:colourblocks/packages.dart';
import 'package:colourblocks/page1.dart';
import 'package:colourblocks/row_task1.dart';
import 'package:colourblocks/splashscreen.dart';
import 'package:colourblocks/tabbar2.dart';
import 'package:colourblocks/textformpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'carttask.dart';
import 'gridview.dart';
import 'listgrid.dart';
import 'listgrid2.dart';
import 'widgets.dart';
import 'tabbar.dart';
import 'tabbar2.dart';
import 'bottomnavigationbar.dart';
var width;
var height;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.outfitTextTheme()
        ),
        home: carttask(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}




