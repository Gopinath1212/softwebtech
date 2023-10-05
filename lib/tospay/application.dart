import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/login.dart';
import 'package:tospay/tospay/signuppage.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor:Color(0xfff545454),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5,),
              Center(child: Image.asset("assets/logo.jpeg",width : 180,height : 180)),
              SizedBox(height: 20,),
              Text("Start Your Fintech service""With our application",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
              SizedBox(height: 20,),
             Container(
               height: 50,
               width: 150,
               decoration: BoxDecoration(
                 color: Colors.blueAccent,
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(10),
                   topRight: Radius.circular(10),
                   bottomLeft: Radius.circular(10),
                   bottomRight: Radius.circular(10),
                 ),
                 border: Border.all(color: Colors.black)
               ),
               child: GestureDetector(
                 onTap: ()  {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  Login()),
      );

      },
                   child: Center(child: Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),))),

             ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    border: Border.all(color: Colors.black)
                ),
                child: GestureDetector(
                    onTap: ()   {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Signup()),
                      );

                    },
                    child: Center(child: Text("SIGN UP",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),))),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
