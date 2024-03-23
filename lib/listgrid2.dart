import 'package:flutter/material.dart';
import 'main.dart';

class listgrid2 extends StatefulWidget {
  const listgrid2({super.key});

  @override
  State<listgrid2> createState() => _listgrid2State();
}

class _listgrid2State extends State<listgrid2> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title:Center(child: Text("List&Grid")),
      ),
      body: Padding(
        padding: EdgeInsets.all(width*0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(child: Text("BIKES",
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
            Container(
              height: width*0.35,
              width: width*1,
              child: ListView.builder(
                itemCount: bikes.length,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: width*0.3,
                    width: width*0.3,
                    margin: EdgeInsets.all(width*0.015),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: width*0.12,
                          backgroundImage: AssetImage(bikes[index]["image"]),
                        ),
                        Text(bikes[index]["text"],style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  );
                },
              ),
            ),
            Center(child: Text("CARS",
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
            Expanded(
              child: GridView.builder(
                itemCount: cars.length,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1,
                    crossAxisCount: 3,
                  crossAxisSpacing: width*0.03,
                  mainAxisSpacing: width*0.03
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height:width*0.17,
                          width: width*0.2,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(cars[index]["image"]),fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(width*0.04),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(cars[index]["icon"]),
                            Text(cars[index]["text"],style: TextStyle(fontWeight: FontWeight.bold)),
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
