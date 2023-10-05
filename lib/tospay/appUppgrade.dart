import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/24x7HelpKYc.dart';

class APPUPGRADE extends StatefulWidget {
  const APPUPGRADE({super.key});

  @override
  State<APPUPGRADE> createState() => _APPUPGRADEState();
}

class _APPUPGRADEState extends State<APPUPGRADE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff545454),
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        leading: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> KYC24x7())
            );
          },
            child: Icon(Icons.arrow_back)),
        title: Text("App upgrade required"),
      ),
      body: Column(
        children: [
          SizedBox(height: 40,),
          Text("This feature is not available in this verson.\nPlease update your app",
            style: TextStyle(fontSize: 17,color: Colors.white),),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                border: Border.all()
              ),
              child: Center(child: Text("Update Now",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900),)),
            ),
          )

        ],
      ),
    );
  }
}
