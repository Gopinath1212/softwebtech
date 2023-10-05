import 'dart:ui';

import 'package:flutter/material.dart';

import 'tospay/financial transection.dart';

class POSTPAID extends StatefulWidget {
  const POSTPAID({super.key});

  @override
  State<POSTPAID> createState() => _POSTPAIDState();
}

class _POSTPAIDState extends State<POSTPAID> {
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
        title: Text("Recharge or Pay Mobile Bill",
          style: TextStyle(fontSize: 20,fontWeight:FontWeight.w900,color: Colors.black),),
        actions: [Icon(Icons.help_outline_outlined)],
      ),
      body: Column(
        children: [
          Card(
            child: TextFormField(
              decoration: const InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: const BorderSide(color: Colors.black, width: 1.0),
                  ),

                  prefixIcon: Icon(Icons.search_rounded,color: Colors.blue,),
                  labelText: 'Enter Name or Mobile Number',
                  suffixIcon: Icon(Icons.contact_page,color: Colors.blue,),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue
                      )
                  )

              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 250.0),
                  child: Text("My Number",
                  style: TextStyle(fontSize: 18,color: Colors.white),),
                ),
                Card(
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all()
                                ),
                                child: Center(child: Text("S")),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text("My Number"),
                                  Text("xxxxxxxxxxx")
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200.0),
                  child: Text("Select a Contact",
                    style: TextStyle(fontSize: 18,color: Colors.white),),
                ),
                Card(
                  child: Container(
                    height: 550,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all()
                                ),
                                child: Center(child: Text("S")),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text("Number"),
                                  Text("xxxxxxxxxxx")
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Divider(endIndent: 10,color: Colors.red,),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all()
                                ),
                                child: Center(child: Text("S")),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text("Number"),
                                  Text("xxxxxxxxxxx")
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Divider(endIndent: 10,color: Colors.red,),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all()
                                ),
                                child: Center(child: Text("S")),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text("Number"),
                                  Text("xxxxxxxxxxx")
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Divider(endIndent: 10,color: Colors.red,),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all()
                                ),
                                child: Center(child: Text("S")),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text("Number"),
                                  Text("xxxxxxxxxxx")
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Divider(endIndent: 10,color: Colors.red,),
                        ),

                        ElevatedButton(
                          onPressed: (){

                          },
                          child: Text("View All",
                          style: TextStyle(fontSize: 18,color: Colors.blue),),
                        )
                      ],
                    ),
                  ),
                ),
               
              ],
            ),
          )
        ],
      ),
    );
  }
}

// ulities
// post, watter,bookcycliter,2dada card,insruance,electricity
