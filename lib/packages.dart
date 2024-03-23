import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

import 'main.dart';

class packages extends StatefulWidget {
  const packages({super.key});

  @override
  State<packages> createState() => _packagesState();
}

class _packagesState extends State<packages> {
  var file;

  pickFile(ImageSource) async {
    final imgFile=await ImagePicker.platform.pickImage(source: ImageSource);
    file=File(imgFile!.path);
    if(mounted){
      setState(() {
        file=File(imgFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Packages",
            style:GoogleFonts.aBeeZee(
              fontSize: width*0.08,
            )),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: width*0.2,
                width: width*0.2,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(width*0.03),
                  image: DecorationImage(image: AssetImage("images/pen.gif"))
                ),
              ),
              Container(
                height: width*0.2,
                width: width*0.2,
                // decoration: BoxDecoration(
                //     color: Colors.grey,
                //     borderRadius: BorderRadius.circular(width*0.03),
                //   image: DecorationImage(image: AssetImage("images/Animation1.json"))
                // ),
                child: Lottie.asset("images/Animation - 1698830473233.json"),
              ),
              Container(
                height: width*0.2,
                width: width*0.2,
                // decoration: BoxDecoration(
                //     color: Colors.grey,
                //     borderRadius: BorderRadius.circular(width*0.03),
                // ),
                child: SvgPicture.asset("images/pic2.svg"),
              ),
              Container(
                height: width*0.2,
                width: width*0.2,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(width*0.03)
                ),
                child: CachedNetworkImage(imageUrl: "https://images.pexels.com/photos/443446/pexels-photo-443446.jpeg?cs=srgb&dl=daylight-forest-glossy-443446.jpg&fm=jpg",fit: BoxFit.fill,),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  pickFile(ImageSource.camera);
                },
                child: Container(
                  height: width*0.08,
                  width: width*0.2,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(width*0.03),
                  ),
                  child: Icon(Icons.camera_alt_outlined),
                ),
              ),
              InkWell(
                onTap: () {
                  pickFile(ImageSource.gallery);
                },
                child: Container(
                  height: width*0.08,
                  width: width*0.2,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(width*0.03),
                  ),
                  child: Icon(Icons.image),
                ),
              ),
            ],
          ),
          file!=null?Container(
            height: width*0.5,
            width: width*0.4,
            color: Colors.lightBlue,
            child: Image.file(file,fit: BoxFit.fill,),
          ):
          Container(
            height: width*0.5,
            width: width*0.4,
            color: Colors.lightBlue,
          )

        ],
      ),
    );
  }
}
