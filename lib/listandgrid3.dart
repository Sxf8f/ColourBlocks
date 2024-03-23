import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class listgrid3 extends StatefulWidget {
  const listgrid3({super.key});

  @override
  State<listgrid3> createState() => _listgrid3State();
}

class _listgrid3State extends State<listgrid3> {
  List cars=[
    {
      // 1
      "image":"images/harrier.png",
      "icon":Icons.account_circle_rounded,
      "text":"Harrier"
    },
    {
      // 2
      "image":"images/tythyryder.png",
      "icon":Icons.adb_outlined,
      "text":"Hyryder"
    },
    {
      // 3
      "image":"images/fjcruiser.png",
      "icon":Icons.add,
      "text":"FJ cruiser"
    },
    {
      // 4
      "image":"images/fort.png",
      "icon":Icons.access_alarm,
      "text":"Fortuner"
    },
    {
      // 5
      "image":"images/endeavour.png",
      "icon":Icons.accessibility,
      "text":"Endeavour"
    },
    {
      // 6
      "image":"images/q3.png",
      "icon":Icons.account_balance_outlined,
      "text":"Audi Q3"
    },
    {
      // 7
      "image":"images/tytcamry.png",
      "icon":Icons.account_box_outlined,
      "text":"Camry"
    },
    {
      // 8
      "image":"images/wrangler.png",
      "icon":Icons.abc_sharp,
      "text":"Wrangler"
    },
    {
      // 9
      "image":"images/thar.png",
      "icon":Icons.access_time_filled,
      "text":"Thar"
    }

  ];
  List bikes=[
    {
      "image":"images/himalayan.png",
      "text":"Himalayan"
    },
    {
      "image":"images/310.png",
      "text":"RR 310"
    },
    {
      "image":"images/interceptor.png",
      "text":"Interceptor"
    },
    {
      "image":"images/rc.png",
      "text":"KTM RC"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(child: Text("List&Grid",style: TextStyle(fontWeight: FontWeight.bold),)),
      ),
      body: Padding(
        padding: EdgeInsets.all(width*0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(child: Text("CARS",style: TextStyle(fontWeight: FontWeight.bold),)),
            Container(
              height: width*0.62,
              width: width*1,
              child: Expanded(
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cars.length,
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1,
                      mainAxisSpacing: width*0.03,
                      crossAxisSpacing: width*0.03,
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: width*0.3,
                      width: width*0.27,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.035),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              offset: Offset(0, 4),
                              spreadRadius: 2,
                              blurRadius: 4,
                            )
                          ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: width*0.15,
                            width: width*0.18,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(width*0.035),
                                image: DecorationImage(image: AssetImage(cars[index]["image"]),fit: BoxFit.fill),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2,
                                      blurRadius: 4,
                                      offset: Offset(0, 4),
                                      color: Colors.black.withOpacity(0.15)
                                  )
                                ]
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add_circle),
                              Text(cars[index]["text"])
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Center(child: Text("BIKES",style: TextStyle(fontWeight: FontWeight.bold),)),
            Container(
              height: width*0.76,
              width: width*1,
              child: ListView.builder(
                itemCount: bikes.length,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: width*0.26,
                    width: width*0.95,
                    margin: EdgeInsets.all(width*0.010),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width*0.035),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: Offset(0, 4)
                          )
                        ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: width*0.18,
                          width: width*0.28,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width*0.035),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    color: Colors.black.withOpacity(0.15),
                                    offset: Offset(0, 4)
                                )
                              ],
                              image: DecorationImage(image: AssetImage(bikes[index]["image"]),fit: BoxFit.fill)
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(bikes[index]["text"],style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: width*0.02),
                            Text("Text2",style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: width*0.02),
                            Text("Text3",style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        )
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
