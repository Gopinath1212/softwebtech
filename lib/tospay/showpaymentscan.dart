import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:tospay/tospay/qr%20code.dart';

class Scanner extends StatefulWidget {
  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff545454),
      appBar: AppBar(
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
        elevation: 1,

        backgroundColor: Colors.blue,
      ),
      body: SafeArea(

        child:Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  QRCODE()),
                        );
                      },
                      child: Icon(Icons.arrow_back)),
                  Padding(
                    padding: const EdgeInsets.only(left: 120.0),
                    child: Text("TOS PAY",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black87),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Center(child: Text("Show this screen to cashier",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.yellowAccent))),
                Text("Payment code for mobile number",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.yellowAccent),),
                Text("0123456789",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),)
              ],
            ),
            SizedBox(height: 20,),
            DottedBorder(
              borderType: BorderType.RRect,
              strokeWidth: 10,
              color: Colors.grey,
              radius: Radius.circular(10),
              child:  Container(
                height: 50,
                width: 120,
                color: Colors.lime,
                // decoration: BoxDecoration(
                //     border: Border.all()
                // ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Center(child: Text("649 910",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),))
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Generate a New OTP",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.yellowAccent),),
            SizedBox(height: 20,),
            Image.asset("assets/scannerlogo.png"),
            SizedBox(height: 20,),
            Image.asset("assets/barcode.png"),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Available Wallet Balance \u{20B9} 0",style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: FontWeight.w700)),
                  SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.only(right: 80.0),
                    child: Text("Add Money",style: TextStyle(fontSize: 15,color: Colors.yellowAccent,fontWeight: FontWeight.w700),),
                  )
                ],
              ),
            )
          ],
        )

      ),
    );
  }
}
