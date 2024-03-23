import 'package:flutter/material.dart';

import 'main.dart';

class rowtask extends StatefulWidget {
  const rowtask({super.key});

  @override
  State<rowtask> createState() => _rowtaskState();
}

class _rowtaskState extends State<rowtask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Center(child: Text("Home page")),
      ),
      body: Padding(
        padding:EdgeInsets.all(width*0.03),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(child: Text("Title")),
            Container(
              height: width*0.4,
              width: width*1,
             decoration: BoxDecoration(
               color: Colors.white,
                 borderRadius: BorderRadius.circular(width*0.03), 
                 boxShadow:[
                   BoxShadow(
                       color: Colors.black.withOpacity(0.15),
                       blurRadius: 4,
                       spreadRadius: 2,
                       offset: Offset(0, 4)
                   )
                 ]
             ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: width*0.2,
                        width: width*0.35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.circular(width*0.03),
                            image: DecorationImage(
                                image: AssetImage("images/jerry.png"),
                              fit: BoxFit.fill
                            ),
                                boxShadow:[
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.15),
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                    offset: Offset(0, 4)
                                  )
                                ]                          ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.account_balance),
                          Text("text 1")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.account_balance),
                          Text("text 2")
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: width*0.35,
                    width: width*0.3,
                   decoration: BoxDecoration(
                     border: Border.all(
                       color: Colors.black12,
                       width: width*0.015
                     )
                   ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Title"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 10,

                            ),
                            CircleAvatar(
                              radius: 10,
                            ),
                            CircleAvatar(
                              radius: 10,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("A"),
                            Text("B"),
                            Text("C")
                          ],
                        )
                      ],
                    ),
                  )

                ],
              ),

            ),
            Text("Text"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.add_circle),
                    SizedBox(
                      width: width*0.03,
                    ),
                    Text("Text1"),
                  ],
                ),
                Icon(Icons.add)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.add_circle),
                    SizedBox(
                      width: width*0.03,
                    ),
                    Text("Text2"),
                  ],
                ),
                Icon(Icons.add)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.add_circle),
                    SizedBox(
                      width: width*0.03,
                    ),
                    Text("Text3"),
                  ],
                ),
                Icon(Icons.add)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.add_circle),
                    SizedBox(
                      width: width*0.03,
                    ),
                    Text("Text4"),
                  ],
                ),
                Icon(Icons.add)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.add_circle),
                    SizedBox(
                      width: width*0.03,
                    ),
                    Text("Text5"),
                  ],
                ),
                Icon(Icons.add)
              ],
            ),
            Container(
              height: width*0.4,
              width: width*1,
             decoration: BoxDecoration(
               color: Colors.white,
                 borderRadius: BorderRadius.circular(width*0.03),
                 boxShadow:[
                   BoxShadow(
                       color: Colors.black.withOpacity(0.15),
                       blurRadius: 4,
                       spreadRadius: 2,
                       offset: Offset(0, 4)
                   )
                 ]
             ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: width*0.13,
                    backgroundImage: NetworkImage("https://static01.nyt.com/images/2021/02/27/arts/tomjerry1/tomjerry1-videoSixteenByNineJumbo1600.jpg"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Text1"),
                      Text("Text2"),
                      Text("Text3")
                    ],
                  ),
                  Container(
                    height: width*0.2,
                    width: width*0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/tom56.png")
                        )
                    ),
                  )
                ],
              ),

            )
          ],
        ),
      )

    );
  }
}
