import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/financial%20transection.dart';

class BankTransfer extends StatefulWidget {
  const BankTransfer({super.key});

  @override
  State<BankTransfer> createState() => _BankTransferState();
}

class _BankTransferState extends State<BankTransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xfff545454),
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> Financial())
              );
            },
            child: Icon(Icons.arrow_back)),
        actions: [Icon(Icons.dehaze_rounded)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Enter recipient details",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: const BorderSide(color: Colors.black, width: 1.0),
                    ),


                    labelText: 'Bank account number',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    )

                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: const BorderSide(color: Colors.black, width: 1.0),
                    ),


                    labelText: 'Re-enter bank account number',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    )

                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: const BorderSide(color: Colors.black, width: 1.0),
                    ),


                    labelText: 'IFSC code',

                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    )

                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: const BorderSide(color: Colors.black, width: 1.0),
                    ),


                    labelText: 'Bank account holder name',

                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    )

                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                border: Border.all()
              ),
              child: Center(child: Text("Confirm",style: TextStyle(color: Colors.white,fontSize: 17),)),
            ),
            SizedBox(height: 20,),
            Text("This information will be securely saved as per\nGoogle Pay Terms of Service and Privacy Policy",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
            SizedBox(height: 20,),
            Text("Recent bank transfer",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all()
                  ),
                  child: Center(child: Text("S",
                    style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all()
                  ),
                  child: Center(child: Text("S",
                    style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all()
                  ),
                  child: Center(child: Text("S",
                    style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all()
                  ),
                  child: Center(child: Text("S",
                    style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                ),

                
              ],
            )
          ],
        ),
      ),
    );
  }
}
