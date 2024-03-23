import 'package:flutter/material.dart';

import 'main.dart';
class favpage extends StatefulWidget {
  const favpage({super.key, required this.favv,});
  final List favv;


  @override
  State<favpage> createState() => _favpageState();
}

class _favpageState extends State<favpage> {
  List fruits = [
    // {
    //   "image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf6eluXzxsKXp3MLH4OhirwCrPm2Ivc4hxGQ&usqp=CAU",
    //   "price" : 85,
    //   "name" : "Orange",
    //   "qty":0
    // },
    // {
    //
    //   "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGivLX5-4hA0avctuaza8utfwcqjW0_smSBg&usqp=CAU",
    //   "price" : 80,
    //   "name" : "watermelon",
    //   "qty":0,
    // },
    // {
    //   "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB3RPyAWEFYCXuDoz_LK7IIZXUytoKy9yjJQ&usqp=CAU",
    //   "price":75,
    //   "name" : "Guava",
    //   "qty":0
    // },
    // {
    //   "image": "https://th.bing.com/th/id/R.28d1c9dd98f97cca56a351e1b3deee0f?rik=V9vVsHbOOViWVw&riu=http%3a%2f%2fweknowyourdreams.com%2fimages%2fgrapes%2fgrapes-02.jpg&ehk=gW7u0v1vlYi%2fWLser9zzkJpw2W4BofaSRK4XfrJ3weI%3d&risl=1&pid=ImgRaw&r=0",
    //   "price" : 90,
    //   "name" : "grapes",
    //   "qty":0
    // },
  ];
  List fav=[];
  int count=0;
  int total=0;
  addCost(){
    total=0;
    for(int i=0;i<fruits.length;i++){
      total=fruits[i]["price"]*fruits[i]["qty"]+total;
    };
  }
  @override
  void initState() {


    print("${widget.favv}AAA");
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text("Favourites"),
        ),
        body: Padding(
          padding: EdgeInsets.all(width*0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: widget.favv.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: width*0.35,
                      width: width*0.8,
                      margin: EdgeInsets.all(width*0.03),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width*0.04),
                          color: Colors.grey
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: width*0.3,
                              width: width*0.3,
                              //color: Colors.black,
                              child: Image(image: NetworkImage(widget.favv[index]["image"]))),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(widget.favv[index]["price"].toString(),style: TextStyle(
                                  fontWeight: FontWeight.w600
                              )),
                              Text(widget.favv[index]["name"],style: TextStyle(
                                  fontWeight: FontWeight.w600
                              )),
                            ],
                          ),
                          widget.favv[index]['qty']!=0?Container(
                              height: width*0.15,
                              width: width*0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(width*0.02),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          // fruits[index]['qty']++;
                                          // total==fruits[index]['qty'];
                                          addCost();
                                          setState(() {

                                          });
                                        },
                                        child: Icon(Icons.add)),
                                    Text(fruits[index]['qty'].toString()),
                                    InkWell(
                                        onTap: () {
                                          // fruits[index]['qty']--;
                                          addCost();
                                          setState(() {

                                          });
                                        },
                                        child: Icon(Icons.remove))
                                  ],
                                ),
                              )
                          ):InkWell(
                            onTap: () {
                              // fruits[index]['qty']++;
                              addCost();
                              setState(() {

                              });
                            },
                            child: Container(
                              height: width*0.15,
                              width: width*0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(width*0.02),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text("Add Item"),
                              ),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                if(fav.contains(index)){
                                  fav.remove(index);
                                }else{
                                  fav.add(index);
                                }
                                setState(() {

                                });
                              },
                              child: fav.contains(index)?Icon(Icons.favorite):Icon(Icons.favorite_border_outlined)
                          )

                        ],
                      ),
                    );
                  },),
              )
            ],
          ),
        )
    );
  }
}
