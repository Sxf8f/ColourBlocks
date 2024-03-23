import 'package:flutter/material.dart';

import 'main.dart';

class gridview extends StatefulWidget {
  const gridview({super.key});

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text("Gridview"),
      ),
      body: Padding(
        padding:  EdgeInsets.all(width*0.03),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: 15,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  mainAxisSpacing: width*0.03,
                  crossAxisSpacing: width*0.03,
                  childAspectRatio: 1,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: width*0.3,
                    height: width*0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                      color: Colors.lightGreen,
                    ),

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
