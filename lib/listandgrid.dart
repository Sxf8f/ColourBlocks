
import 'package:flutter/material.dart';
import 'main.dart';

class listgrid extends StatefulWidget {
  const listgrid({super.key});

  @override
  State<listgrid> createState() => _listgridState();
}

class _listgridState extends State<listgrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding:  EdgeInsets.all(width*0.03),
        child: Column(
          children: [
            Container(
              height: width*0.03,
              width: width*1,
              child: ListView.separated(
                itemCount: 15,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: width*0.2,
                    width: width*0.2,
                    // margin: EdgeInsets.only(right: width*0.03),
                    color: Colors.black,
                  );
                }, separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: width*0.03,
                  );
              },
              ),
            )
          ],
        ),
      ),
    );
  }
}
