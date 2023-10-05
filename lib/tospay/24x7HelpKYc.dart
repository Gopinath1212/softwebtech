import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/appUppgrade.dart';
import 'package:tospay/tospay/tosPayKYC.dart';


class KYC24x7 extends StatefulWidget {
  const KYC24x7({super.key});

  @override
  State<KYC24x7> createState() => _KYC24x7State();
}

class _KYC24x7State extends State<KYC24x7> {
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
              MaterialPageRoute(builder: (context)=> TOSPAYKYC())
            );
          },
            child: Icon(Icons.arrow_back,size: 30,)),
        title: Center(child: Text("24x7 Help",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
      ),
      body: SingleChildScrollView(
        child:Column(
          children: [
            Column(
              children: [
                SizedBox(height: 20,),
                Center(
                  child: Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all()
                    ),
                    child: Center(child: Text("Today",style: TextStyle(color: Colors.white,fontSize: 17),)),
                  ),
                ),
                Text("Tospay Assistant an hour ago",style: TextStyle(color: Colors.white,fontSize: 17),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Dear Customer,I'm your personal Tospay Assistant",textAlign: TextAlign.start,style: TextStyle(fontSize: 12,wordSpacing: 10,letterSpacing: 2),),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      height: 750,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Thank you for expressing your interest.we regret to inform you that currently, we are not accepting customer on- boarding/KYC requests via any modes(Home visit/KYC point/Video KYC)as per RBI's direction to temporarily halt the onboarding of new customers.",textAlign: TextAlign.start,style: TextStyle(fontSize: 12,wordSpacing: 10,letterSpacing: 2),),
                          ),
                           SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("However,if you  have already"
                                   "done min KYC on Tospay then"
                            "you are eligible for completing"
                            "KYC.in case,you have not"
                            "completed MIn KYC OR your"
                            "KYC has expired then you are"
                            "not eligible for completing KYC",textAlign: TextAlign.start,style: TextStyle(fontSize: 12,wordSpacing: 10,letterSpacing: 2)),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Rest assured we are working"
                                "towarts making your"
                                "experience better and will"
                                "provide the KYC facility soon.",
                               textAlign: TextAlign.start,style: TextStyle(fontSize: 12,wordSpacing: 10,letterSpacing: 2)),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Meanwhile,you can use our UPI"
                                "Payment mode to sent or"
                                "receive money.you can also"
                                "make payments to online"
                                "merchants and outlets that"
                                "accept BHIM UPI as a mode of"
                                "Payment.for more information,",textAlign: TextAlign.start,style: TextStyle(fontSize: 12,wordSpacing: 10,letterSpacing: 2)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=>APPUPGRADE())
                                );
                              },
                                child: Text("please Click Here",textAlign: TextAlign.start,style: TextStyle(fontSize: 12,color: Colors.blue),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("We regret the inconvenience"
                                "caused and appreciate your"
                                "patience and cooperation",
                                textAlign: TextAlign.start,style: TextStyle(fontSize: 12,wordSpacing: 10,letterSpacing: 2)),
                          ),


                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      height: 40,
                      width: 350,
                      child: Column(
                        children: [
                          Center(child: Text("What can we help you with",style: TextStyle(fontSize: 12,letterSpacing: 2,wordSpacing: 10),))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 60.0),
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blue)
                    ),
                    child: Center(child: Text("I want to complete my KYC",style: TextStyle(fontSize: 12,color: Colors.blue),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 370,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blue)
                    ),
                    child: Center(child: Text("I faced an issue at the KYC point",style: TextStyle(fontSize: 12,color: Colors.blue),)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
