import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/passbook.dart';

class SpendAnalytic extends StatefulWidget {
  const SpendAnalytic({super.key});

  @override
  State<SpendAnalytic> createState() => _SpendAnalyticState();
}

class _SpendAnalyticState extends State<SpendAnalytic> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xfff545454),
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(
              context,
               MaterialPageRoute(builder: (context)=> PassBook())
            );
          },
            child: Icon(Icons.arrow_back)),
        title: Center(child: Image.asset("assets/logo.jpeg",scale: 5,)),
      ),
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child:Column(
          children: [
            SizedBox(height: 20,),
            Text("Spend Analytics",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("TOSPAY Wallet,other Wallets And TASPAY Gift Voucher transaction"),
            ),

            Row(
              children: [
                SizedBox(width: 20,),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),gradient: LinearGradient(

                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,


                    colors: [
                      Colors.white,
                      Colors.deepPurple.shade900,



                    ],
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white),
                      child: Column(
                        children: [
                          SizedBox(height: 25,),
                          Text("Money Spent",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w500)),
                          Text("\u{20B9}0",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w500)),
                        ],
                      ),

                    ),
                  ),
                ),
                SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.pink,),
                          height: 15,
                          width: 15,

                        ),
                        SizedBox(width: 10,),
                        Text("Travel 0%",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.w500),),

                      ],),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.deepPurple,),
                          height: 15,
                          width: 15,

                        ),
                        SizedBox(width: 10,),
                        Text("food& Beverage 0%",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.w500),),

                      ],),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.yellowAccent,),
                          height: 15,
                          width: 15,

                        ),
                        SizedBox(width: 10,),
                        Text("Recharge & Bill Payment 0%",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.w500),),

                      ],),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blue,),
                          height: 15,
                          width: 15,

                        ),
                        SizedBox(width: 10,),
                        Text("Entertainment 0%",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.w500),),

                      ],),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.yellowAccent,),
                          height: 15,
                          width: 15,

                        ),
                        SizedBox(width: 10,),
                        Text("Shopping 0%",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.w500),),

                      ],),
                  ],)
              ],),
            Divider(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),gradient: LinearGradient(

                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,


                    colors: [
                      Colors.white,
                      Colors.deepPurple.shade900,



                    ],
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white),
                      child: Column(
                        children: [
                          SizedBox(height: 25,),
                          Text("Money Received",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w500)),
                          Text("\u{20B9}0",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w500)),
                        ],
                      ),

                    ),
                  ),
                ),
                SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.pink,),
                          height: 15,
                          width: 15,

                        ),
                        SizedBox(width: 10,),
                        Text("CashBack 0%",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.w500),),

                      ],),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.deepPurple,),
                          height: 15,
                          width: 15,

                        ),
                        SizedBox(width: 10,),
                        Text("friends & Family 0%",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.w500),),

                      ],),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.yellowAccent,),
                          height: 15,
                          width: 15,

                        ),
                        SizedBox(width: 10,),
                        Text("Refunds 0%",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.w500),),

                      ],),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blue,),
                          height: 15,
                          width: 15,

                        ),
                        SizedBox(width: 10,),
                        Text("Food Wallet 0%",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.w500),),

                      ],),

                  ],)
              ],),

        ],
        ),
      ),
    );
  }
}
