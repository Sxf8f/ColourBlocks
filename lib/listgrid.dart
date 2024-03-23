import 'package:flutter/cupertino.dart';
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
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Text("List & Grid"),
      ),
      body: Padding(
        padding:  EdgeInsets.all(width*0.03),
        child: Column(
          children: [
            Center(child: Text("ListView",
            style: TextStyle(fontSize: 18),)),
            Container(
              height: width*0.3,
              width: width*1,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {

                  return Container(
                    height: width*0.3,
                    width: width*0.3,
                    margin:EdgeInsets.all(width*0.015),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                      color: Colors.white,
                        boxShadow:[
                          BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 4,
                              spreadRadius: 2,
                              offset: Offset(0, 4)
                          )
                        ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: width*0.15,
                          width: width*0.15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width*0.05),
                            image: DecorationImage(
                                image: AssetImage("images/jerry.png"),
                            fit: BoxFit.fill)
                          ),
                        ),
                        Text("Text1"),
                        Text("Text2"),

                      ],
                    ),
                  );
                },
              ),
            ),
            Text("GridView",
            style: TextStyle(fontSize: 18)),
            Expanded(
              child: GridView.builder(
                itemCount: 12,
                scrollDirection: Axis.vertical,
                physics: AlwaysScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1,
                    crossAxisSpacing: width*0.03,
                    mainAxisSpacing: width*0.03,
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: width*0.35,
                    width: width*0.3,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                      color: Colors.white,
                        boxShadow:[
                          BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 4,
                              spreadRadius: 2,
                              offset: Offset(0, 4)
                          )
                        ]
                    ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: width*0.15,
                          width:width*0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width*0.04),
                              image: DecorationImage(image: AssetImage("images/tom56.png"),
                                  fit: BoxFit.fill)
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.adb_outlined),
                            Text("Text"),
                          ],
                        ),
                      ],
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
