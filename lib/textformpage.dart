import 'package:colourblocks/datapass.dart';
import 'package:colourblocks/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textform extends StatefulWidget {
  const textform({super.key});

  @override
  State<textform> createState() => _textformState();
}

class _textformState extends State<textform> {
  final numberValidation=RegExp(r"[0-9]{10}$");
  final emailvalidation=RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  final passwordvalidaation=RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  final formKey=GlobalKey<FormState>();
  bool eye=true;
  TextEditingController nameController=TextEditingController();
  TextEditingController numberController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController addressController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextForm"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: height*0.9,
          width: width*1,
          margin: EdgeInsets.all(width*0.03),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFormField(
                  controller: nameController,
                  // textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  // maxLength: 4,
                  // maxLines: 5,
                  // minLines: 3,
                  // obscureText: true,
                  // obscuringCharacter: "*",

                  style: TextStyle(
                    fontSize: width*0.05,
                    fontWeight: FontWeight.w500
                  ),

                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.person),
                    // suffixText: "fff",
                    labelText: "Name",
                    labelStyle: TextStyle(
                      fontSize: width*0.05,
                      fontWeight: FontWeight.w600,
                    ),
                    hintText: "Please enter your name",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: width*0.04
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black54,
                      ),
                      borderRadius: BorderRadius.circular(width*0.03)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black26,
                        ),
                        borderRadius: BorderRadius.circular(width*0.03)
                    )
                  ),
                ),
                TextFormField(
                  controller: numberController,
                  // textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  maxLength: 10,
                  // maxLines: 5,
                  // minLines: 3,
                  // obscureText: true,
                  // obscuringCharacter: "*",

                  style: TextStyle(
                    fontSize: width*0.05,
                    fontWeight: FontWeight.w500
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if(!numberValidation.hasMatch(value!)){
                      return "Enter valid number";
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.phone),
                    // suffixText: "fff",
                    labelText: "Number",
                    labelStyle: TextStyle(
                      fontSize: width*0.05,
                      fontWeight: FontWeight.w600,
                    ),
                    hintText: "Please enter your number",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: width*0.04
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black54,
                      ),
                      borderRadius: BorderRadius.circular(width*0.03)
                    ),
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //       color: Colors.black26,
                    //     ),
                    //     borderRadius: BorderRadius.circular(width*0.03)
                    // )
                  ),
                ),
                TextFormField(
                  controller: emailController,
                  // textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  // maxLength: 4,
                  // maxLines: 5,
                  // minLines: 3,
                  // obscureText: true,
                  // obscuringCharacter: "*",

                  style: TextStyle(
                    fontSize: width*0.05,
                    fontWeight: FontWeight.w500
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if(!emailvalidation.hasMatch(value!)){
                      return "Enter valid email";
                    }
                  },
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.email_outlined),
                    // suffixText: "fff",
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontSize: width*0.05,
                      fontWeight: FontWeight.w600,
                    ),
                    hintText: "Please enter your email",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: width*0.04
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.circular(width*0.03)
                    ),
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //       color: Colors.black26,
                    //     ),
                    //     borderRadius: BorderRadius.circular(width*0.03)
                    // )
                  ),
                ),
                TextFormField(
                  controller: passwordController,
                  // textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  maxLength: 8,
                  // maxLines: 5,
                  // minLines: 3,
                  obscureText: eye?true: false,
                  // obscuringCharacter: "*",

                  style: TextStyle(
                    fontSize: width*0.05,
                    fontWeight: FontWeight.w500
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if(!passwordvalidaation.hasMatch(value!)){
                      return "Enter valid password";
                    }
                  },
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: () {
                        eye=!eye;
                        setState(() {

                        });
                      },

                        child: Icon(eye?Icons.visibility_off:Icons.visibility)),
                    // suffixText: "fff",
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: width*0.05,
                      fontWeight: FontWeight.w600,
                    ),
                    hintText: "Please enter your password",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: width*0.04
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black54,
                      ),
                      borderRadius: BorderRadius.circular(width*0.03)
                    ),
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //       color: Colors.black26,
                    //     ),
                    //     borderRadius: BorderRadius.circular(width*0.03)
                    // )
                  ),
                ),
                TextFormField(
                  controller: addressController,
                  // textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  // maxLength: 4,
                  maxLines: null,
                  minLines: 2,
                  // obscureText: true,
                  // obscuringCharacter: "*",

                  style: TextStyle(
                    fontSize: width*0.05,
                    fontWeight: FontWeight.w500
                  ),
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.event_note_outlined),
                    // suffixText: "fff",
                    labelText: "Address",
                    labelStyle: TextStyle(
                      fontSize: width*0.05,
                      fontWeight: FontWeight.w600,
                    ),
                    hintText: "Please enter your address",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: width*0.04
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black54,
                      ),
                      borderRadius: BorderRadius.circular(width*0.03)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black26,
                        ),
                        borderRadius: BorderRadius.circular(width*0.03)
                    )
                  ),
                ),
                InkWell(
                  onTap: () {
                    if(nameController.text!=""&&
                    numberController.text!=""&&
                    emailController.text!=""&&
                    passwordController.text!=""&&
                    addressController.text!=""&&
                    formKey.currentState!.validate()
                    ){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => datapass(
                        name: nameController.text,
                        number: numberController.text,
                        email: emailController.text,
                        password: passwordController.text,
                        address: addressController.text,
                      ),));
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Submitted successfully")));

                    }else{
                      nameController.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your name"))):
                      numberController.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your number"))):
                      emailController.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your email"))):
                      passwordController.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your password"))):
                      addressController.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your address"))):
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your valid details")));
                    }
                    // numberController.clear();
                    // numberController.clear();
                    // emailController.clear();
                    // passwordController.clear();
                    // addressController.clear();
                    print(nameController.text);
                    print(numberController.text);
                    print(emailController.text);
                    print(passwordController.text);
                    print(addressController.text);

                    setState(() {

                    });
                  },
                  child: Container(
                    height: width*0.08,
                    width: width*0.2,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(width*0.05),
                    ),
                    child: Center(child: Text("Submit",style: TextStyle(color: Colors.white),)),

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}