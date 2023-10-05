import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/24x7HelpKYc.dart';
import 'package:tospay/tospay/financial%20transection.dart';

class TOSPAYKYC extends StatefulWidget {
  const TOSPAYKYC({super.key});

  @override
  State<TOSPAYKYC> createState() => _TOSPAYKYCState();
}

class _TOSPAYKYCState extends State<TOSPAYKYC> {
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
              MaterialPageRoute(builder: (context)=>Financial())
            );
          },
            child: Icon(Icons.arrow_back)),
        title: Center(child: Image.asset("assets/icon.png",scale: 5,)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Tospay KYC",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 20,),
              Card(
                child: Container(
                  height: 500,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Container(
                        height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(),
                            image: DecorationImage(
                              image: AssetImage("assets/chat.png"),
                              fit: BoxFit.cover
                            )
                          ),
                      ),
                      SizedBox(height: 20,),
                       Text("Let us know the issue you are facing",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> KYC24x7())
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all()
                          ),
                          child: Center(child: Text("Chat with us",style: TextStyle(fontSize: 18,color: Colors.white),)),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Divider(height: 30,color: Colors.blueAccent,)
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
