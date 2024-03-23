import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'main.dart';

class widgets extends StatefulWidget {
  const widgets({super.key});

  @override
  State<widgets> createState() => _widgetsState();
}

class _widgetsState extends State<widgets> {
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
    }

  ];
  int currentIndex=0;
  int count=0;
  // bool gender=true;
  String gender="";
  bool check1=false;
  bool check2=false;
  bool select1=true;
  bool select2=false;
  bool select3=false;
  bool select4=false;
  bool clear=false;
  bool toggle=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(

        ),
      ),
      // floatingActionButtonLocation:FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Center(child: Text("Widgets")),
        backgroundColor: Colors.purple,
        actions: [
          PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("Profile")),
                  PopupMenuItem(child: Text("info")),
                  PopupMenuItem(child: Text("settings")),
                  PopupMenuItem(child: Text("Privacy")),
                  PopupMenuItem(child: Text("Help")),
                ];
              },)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(width*0.03),
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: cars.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                  height: width*0.45,
                  width: width*1,
                  margin: EdgeInsets.only(right: width*0.03),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                      image: DecorationImage(image: AssetImage(cars[index]["image"]),fit: BoxFit.cover)
                  ),
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 0.7,
                autoPlayAnimationDuration: Duration(
                  milliseconds: 300
                ),
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex=index;
                  });
                },
              ),
            ),
           SizedBox(
             height: width*0.03,
           ),
            AnimatedSmoothIndicator(
                activeIndex: currentIndex,
                count: cars.length,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey,
                dotColor: Colors.black,
                dotHeight: width*0.02,
                dotWidth: width*0.04
              ),
            ),
            SizedBox(
              height: width*0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RadioMenuButton(
                    value: "m",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender=value!;
                      });
                    },
                    child: Text("Male")
                ),
                RadioMenuButton(
                    value: "f",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender=value!;
                      });
                    },
                    child: Text("Female")
                ),
                RadioMenuButton(
                    value: "o",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender=value!;
                      });
                    },
                    child: Text("Other")
                ),
              ],
            ),
            SizedBox(
              height: width*0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CheckboxMenuButton(
                    value: check1,
                    onChanged: (value) {
                      setState(() {
                        check1=value!;
                      });
                    },
                    child: Text("check1")
                ),
                CheckboxMenuButton(
                    value: check2,
                    onChanged: (value) {
                      setState(() {
                        check2=value!;
                      });
                    },
                    child: Text("check2")
                )
              ],
            ),
            clear==true?SizedBox(height: width*0.08,):Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                  select1=true;
                  select2=false;
                  select3=false;
                  select4=false;
                    setState(() {

                    });
                  },
                  child: Container(
                    height: width*0.08,
                    width: width*0.2,
                    child: Center(child: Text("A",
                    style: TextStyle(
                      color: select1==true?Colors.white:Colors.black
                    ),
                    )),
                    decoration: BoxDecoration(
                      color:select1==true?Colors.green: Colors.grey[400],
                      borderRadius: BorderRadius.circular(width*0.03),

                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    select1=false;
                    select2=true;
                    select3=false;
                    select4=false;                    setState(() {

                    });
                  },
                  child: Container(
                    height: width*0.08,
                    width: width*0.2,
                    child: Center(child: Text("B",style: TextStyle(
                      color: select2==true?Colors.white:Colors.black
                    ),)),
                    decoration: BoxDecoration(
                        color:select2==true?Colors.green:Colors.grey[400],
                        borderRadius: BorderRadius.circular(width*0.03)
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    select1=false;
                    select2=false;
                    select3=true;
                    select4=false;                    setState(() {

                    });
                  },
                  child: Container(
                    height: width*0.08,
                    width: width*0.2,
                    child: Center(child: Text("C",style: TextStyle(
                      color: select3==true?Colors.white:Colors.black
                    ),)),
                    decoration: BoxDecoration(
                        color:select3==true?Colors.green:Colors.grey[400],
                        borderRadius: BorderRadius.circular(width*0.03)
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    select1=false;
                    select2=false;
                    select3=false;
                    select4=true;                    setState(() {

                    });
                  },
                  child: Container(
                    height: width*0.08,
                    width: width*0.2,
                    child: Center(child: Text("D",style: TextStyle(
                      color: select4==true?Colors.white:Colors.black
                    ),)),
                    decoration: BoxDecoration(
                        color:select4==true?Colors.green:Colors.grey[400],
                        borderRadius: BorderRadius.circular(width*0.03)
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: width*0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    clear=true;
                    setState(() {
                    });
                  },
                  child: Container(
                    height: width*0.08,
                    width: width*0.2,
                    child: Center(child: Text("Clear")),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(width*0.03)
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    clear=false;
                    setState(() {

                    });
                  },
                  child: Container(
                    height: width*0.08,
                    width: width*0.2,
                    child: Center(child: Text("Get")),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(width*0.03)
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: width*0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    count++;
                    setState(() {

                    });
                  },
                  child: CircleAvatar(
                    radius: width*0.08,
                    child: Icon(Icons.add),
                  ),
                ),
                Text(count.toString(),style: TextStyle(fontWeight: FontWeight.bold)),
                InkWell(
                  onTap: () {
                    count<=0?0:count--;
                    setState(() {

                    });
                  },
                  child: CircleAvatar(
                    radius: width*0.08,
                    child: Icon(Icons.remove),
                  ),
                )
              ],
            ),
            SizedBox(
              height: width*0.03,
            ),
            Divider(
              color: Colors.black,
              endIndent: width*0.1,
              indent: width*0.1,
              thickness: Checkbox.width*0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircularProgressIndicator(
                  color: Colors.black,
                  backgroundColor: Colors.grey,
                  strokeWidth: width*0.01,
                ),
                InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("Try again !!")));
                  },
                  child: Container(
                    height: width*0.08,
                    width: width*0.2,
                    child: Center(child: Text("Snackbar")),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(width*0.03)
                    ),
                  ),
                ),
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        toggle=!toggle;
                        setState(() {

                        });
                      },
                      child: Container(
                        height: width*0.08,
                        width: width*0.2,
                        decoration: BoxDecoration(
                            color: toggle?Colors.green:Colors.grey[300],
                            borderRadius: BorderRadius.circular(width*0.05)
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      left: toggle?width*0.12:width*0.02,
                      right: toggle?width*0.02:width*0.12,
                      duration: Duration(
                        milliseconds: 200
                      ),
                      curve: Curves.easeIn,
                      child: InkWell(
                        onTap: () {
                          toggle=!toggle;
                          setState(() {

                          });
                        },
                        child: AnimatedContainer(
                            duration: Duration(
                              milliseconds: 300
                            ),
                          height: width*0.08,
                          width: width*0.08,
                          curve: Curves.easeIn,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      top: width*0.02,
                      right: toggle?width*0.08:width*0.02,
                      left: toggle?width*0.02:width*0.1,
                      duration: Duration(
                          milliseconds: 200
                      ),
                      curve: Curves.easeIn,
                      child: Text(toggle?"ON":"OFF",style: TextStyle(
                        fontSize: width*0.03,
                          color: toggle?Colors.white:Colors.black
                      ),),
                      ),

                  ],
                ),
              ],
            ),
            SizedBox(
              height: width*0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Are you sure you want to exit?"),
                            content:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                  },
                                  child: Container(
                                    height: width*0.08,
                                    width: width*0.2,
                                    decoration: BoxDecoration(
                                        color:Colors.grey[300],
                                        borderRadius: BorderRadius.circular(width*0.05)
                                    ),
                                    child: Center(child: Text("YES",
                                      style: TextStyle(
                                          fontSize: width*0.03
                                      ),)),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: width*0.08,
                                    width: width*0.2,
                                    decoration: BoxDecoration(
                                        color:Colors.grey[300],
                                        borderRadius: BorderRadius.circular(width*0.05)
                                    ),
                                    child: Center(child: Text("NO",
                                      style: TextStyle(
                                          fontSize: width*0.03
                                      ),)),
                                  ),
                                ),
                              ],
                            ) ,
                          );
                        },);
                  },
                  child: Container(
                    height: width*0.08,
                    width: width*0.2,
                    decoration: BoxDecoration(
                        color:Colors.grey[300],
                        borderRadius: BorderRadius.circular(width*0.05)
                    ),
                    child: Center(child: Text("AltBox",
                    style: TextStyle(
                      fontSize: width*0.03
                    ),)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        showDragHandle: true,
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(width*0.07,),
                          topRight: Radius.circular(width*0.07),
                          ),
                        ),
                        builder: (context) {
                          return Container(
                            // height: width*0.3,
                          );
                        },);
                  },
                  child: Container(
                    height: width*0.08,
                    width: width*0.2,
                    decoration: BoxDecoration(
                        color:Colors.grey[300],
                        borderRadius: BorderRadius.circular(width*0.05),
                    ),
                    child: Center(
                      child: Text("Btmsheet",
                      style: TextStyle(
                        fontSize: width*0.03
                      ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}