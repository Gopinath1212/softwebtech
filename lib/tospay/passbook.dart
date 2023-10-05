import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/addMoney.dart';
import 'package:tospay/tospay/automaticAddMoney.dart';
import 'package:tospay/tospay/requestStatement.dart';
import 'package:tospay/tospay/sentMoneyfromWallet.dart';
import 'package:tospay/tospay/spendAnalytics.dart';

class PassBook extends StatefulWidget {
  const PassBook({super.key});

  @override
  State<PassBook> createState() => _PassBookState();
}

class _PassBookState extends State<PassBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        leading: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>AddMoney())
            );
          },
            child: Icon(Icons.arrow_back)),
        title: Center(child: Image.asset("assets/logo.jpeg",scale: 5,)),
        actions: [Icon(Icons.search_rounded)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 180.0),
                    child: Text("Available Balance",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 270.0),
                    child: Text("\u{20B9}0.00",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>Statement())

                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.assignment),
                    Text("Request Statement",style: TextStyle(fontSize: 18,color: Colors.blue),),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>Kyc())

                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.wallet_membership_sharp),
                    Text("Sent Money from Wallet to Bank",style: TextStyle(fontSize: 18,color: Colors.blue),),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>Automatic())
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.money_outlined),
                    Text("Automatic Add Money",style: TextStyle(fontSize: 18,color: Colors.blue),),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> SpendAnalytic())
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.calendar_view_day),
                    Text("View Spend Analytics",style: TextStyle(fontSize: 18,color: Colors.blue),),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 5,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all()
                ),
              ),
            ),
            SizedBox(height: 20,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Recent",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                Text("Filter",style: TextStyle(fontWeight: FontWeight.w300),),
                Icon(Icons.filter)
              ],
            )
            
          ],
        ),

      ),
    );
  }
}
