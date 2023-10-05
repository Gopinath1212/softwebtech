import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/financial%20transection.dart';

class UPI extends StatefulWidget {
  const UPI({super.key});

  @override
  State<UPI> createState() => _UPIState();
}

class _UPIState extends State<UPI> {
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
            Text("Enter UPI ID or number",
            style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: const BorderSide(color: Colors.black, width: 1.0),
                    ),


                    labelText: 'UPI ID or number',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    )

                ),
              ),
            ),
            SizedBox(height: 50,),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                border: Border.all()
              ),
              child: Center(child: Text("Continue",style: TextStyle(fontSize: 17,color: Colors.white),)),
            )

          ],
        ),
      ),
    );
  }
}
