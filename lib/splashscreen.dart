import 'package:colourblocks/main.dart';
import 'package:colourblocks/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(
      seconds:
        4
    )).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => widgets(),)));
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: height*1,
        width: width*1,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("WELCOME",style: TextStyle(
                fontSize:width*0.08,
              fontWeight: FontWeight.w600
            ),),
            SizedBox(
              height: width*0.03,
            ),
            CircularProgressIndicator(
              color: Colors.black,
            )
          ],
        ) ,
      ),
    );
  }
}
