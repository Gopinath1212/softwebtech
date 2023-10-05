import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/passbook.dart';

class Kyc extends StatefulWidget {
  const Kyc({super.key});

  @override
  State<Kyc> createState() => _KycState();
}

class _KycState extends State<Kyc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: Colors.yellowAccent,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(right: 320.0),
            child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>PassBook())

                  );
                },
                child: Icon(Icons.arrow_back,size: 25,)),
          ),
          SizedBox(height: 20,),
          Text("Upgrade your KYC",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Text("As per regulations,yoe need to upgrade your\n KYC to transfer money from your wallet to bank,",textAlign: TextAlign.center,style:TextStyle(fontSize: 18,fontWeight: FontWeight.w400)),
          SizedBox(height: 20,),
           Container(
             height: 50,
             width: 350,
             decoration: BoxDecoration(
               color: Colors.blueAccent,
               borderRadius: BorderRadius.circular(10),
               border: Border.all()
             ),
             child: Center(child: Text("Proceed")),
           )
        ],
      ),
    );
  }
}
