import 'package:flutter/material.dart';
import 'package:testcode/signinscreen.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar( leading: Icon(Icons.list, size: 30, color: Color(0xff0b2438)),
        backgroundColor: Colors.white,),
        body:Column( children: [
        Text("Create You Account",style: TextStyle(fontSize: 35,color: Color(0xff0b2438),fontWeight: FontWeight.bold),),
        SizedBox(height: 10),
        Expanded(
           child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Color(0xff0b2438),
            borderRadius: BorderRadius.only(topLeft:Radius.circular(30) ,topRight: Radius.circular(30))),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Full Name",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              TextField(style: TextStyle(color: Colors.white),
              decoration:InputDecoration(
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 3)),
              hintText: "name",hintStyle: TextStyle(color: Colors.white),
              suffixIcon: Icon(Icons.person,size: 20,color:Colors.white ,)
            ) ),SizedBox(height: 15),
            Text(" Phone Number",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              TextField(style: TextStyle(color: Colors.white),
              decoration:InputDecoration(
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 3)),
              hintText: "number",hintStyle: TextStyle(color: Colors.white),
              suffixIcon: Icon(Icons.phone,size: 20,color:Colors.white ,)
            ) ),SizedBox(height: 15),
            Text(" Gmail",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              TextField(style: TextStyle(color: Colors.white),
              decoration:InputDecoration(
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 3)),
              hintText: "Gmail",hintStyle: TextStyle(color: Colors.white),
              suffixIcon: Icon(Icons.email,size: 20,color:Colors.white ,)
            ) ),SizedBox(height: 15),
             Text("Password",style: TextStyle(fontSize: 20,color: Colors.white),),
            SizedBox(height: 5),
            TextField(obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration:InputDecoration(
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 3)),
              hintText: "Enter password",hintStyle: TextStyle(color: Colors.white),
              suffixIcon: Icon(Icons.remove_red_eye,size: 20,color:Colors.white ,)
            ) ),
Align(
              alignment: Alignment.bottomRight,
              child: Text("forget Password",style: TextStyle(color: Colors.white),)),
Spacer(),
 Align(
            alignment: Alignment.center,
             child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Color(0xff0b2438)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    fixedSize: Size(170, 50)),
                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signinscreen(),));},
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0b2438)),
                )),
           ),
              
              ],
            ) ,
            ))
        ],),
);
  }
}