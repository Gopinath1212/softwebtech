import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:tospay/tospay/financial%20transection.dart';
import 'package:tospay/tospay/otp.dart';

class UserKyc extends StatefulWidget {
  const UserKyc({super.key});

  @override
  State<UserKyc> createState() => _UserKycState();
}

class _UserKycState extends State<UserKyc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff545454),
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        leading: GestureDetector(
            onTap: ()   {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  OTP()),
              );

            },
            child: Icon(Icons.arrow_back)),
        title: Text("User Kyc",style:TextStyle(fontWeight: FontWeight.w900) ,),
      ),
      body: SingleChildScrollView(
        child: Column(

            children: [
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logo.jpeg"),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 1300,
                width: 450,
                decoration:BoxDecoration(
                    border: Border.all()
                ) ,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Center(child: Text("Kyc Verification",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,color: Colors.black),)),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              // width: 0.0 produces a thin "hairline" border
                              borderSide: const BorderSide(color: Colors.black, width: 1.0),
                            ),


                            labelText: 'Name',
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue
                                )
                            )

                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              // width: 0.0 produces a thin "hairline" border
                              borderSide: const BorderSide(color: Colors.black, width: 1.0),
                            ),


                            labelText: 'Mobile Number',
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue
                                )
                            )

                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              // width: 0.0 produces a thin "hairline" border
                              borderSide: const BorderSide(color: Colors.black, width: 1.0),
                            ),


                            labelText: 'Email',
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue
                                )
                            )

                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              // width: 0.0 produces a thin "hairline" border
                              borderSide: const BorderSide(color: Colors.black, width: 1.0),
                            ),


                            labelText: 'Shop Name',
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue
                                )
                            )

                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              // width: 0.0 produces a thin "hairline" border
                              borderSide: const BorderSide(color: Colors.black, width: 1.0),
                            ),


                            labelText: 'Address',
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue
                                )
                            )

                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height:50,
                              width: 150,
                              // decoration: BoxDecoration(border: Border.all()),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    enabledBorder: const OutlineInputBorder(
                                      // width: 0.0 produces a thin "hairline" border
                                      borderSide: const BorderSide(color: Colors.black, width: 1.0),
                                    ),


                                    labelText: 'Pincode',
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue
                                        )
                                    )

                                ),
                              )),
                          SizedBox(width: 50,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height:50,
                                width: 150,
                                // decoration: BoxDecoration(border: Border.all()),

                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      enabledBorder: const OutlineInputBorder(
                                        // width: 0.0 produces a thin "hairline" border
                                        borderSide: const BorderSide(color: Colors.black, width: 1.0),
                                      ),


                                      labelText: 'City',
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blue
                                          )
                                      )

                                  ),
                                )),
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              // width: 0.0 produces a thin "hairline" border
                              borderSide: const BorderSide(color: Colors.black, width: 1.0),
                            ),


                            labelText: 'State',
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue
                                )
                            )

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              // width: 0.0 produces a thin "hairline" border
                              borderSide: const BorderSide(color: Colors.black, width: 1.0),
                            ),


                            labelText: 'PAN Number',
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue
                                )
                            )

                        ),
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                         DottedBorder(
                           borderType: BorderType.RRect,
                           strokeWidth: 1,
                           radius: Radius.circular(10),
                           child:  Container(
                             height: 150,
                             width: 150,
                             // decoration: BoxDecoration(
                             //     border: Border.all()
                             // ),
                             child: Column(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(top: 20.0),
                                   child: Icon(Icons.cloud_upload_rounded,size: 70,),
                                 ),
                                 Expanded(child: Center(child: Text("Upload Pancard",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)))
                               ],
                             ),
                           ),
                         ),
                          SizedBox(width: 20,),
                          Card(
                            child: Container(
                              height: 150,
                              width: 180,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/pancard.jpeg"),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                          )

                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              // width: 0.0 produces a thin "hairline" border
                              borderSide: const BorderSide(color: Colors.black, width: 1.0),
                            ),


                            labelText: 'Aadhaar-Card Number',

                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue
                                )
                            )

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          DottedBorder(
                            borderType: BorderType.RRect,
                            strokeWidth: 1,
                            radius: Radius.circular(10),
                            child:  Container(
                              height: 150,
                              width: 150,
                              // decoration: BoxDecoration(
                              //     border: Border.all()
                              // ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Icon(Icons.cloud_upload_rounded,size: 70,),
                                  ),
                                  Expanded(child: Center(child: Text("Upload frontside\n    of Aadhaar",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Card(
                            child: Container(
                              height: 150,
                              width: 203,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/frontside aadhaar.jpeg"),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                          )

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          DottedBorder(
                            borderType: BorderType.RRect,
                            strokeWidth: 1,
                            radius: Radius.circular(10),
                            child:  Container(
                              height: 150,
                              width: 150,
                              // decoration: BoxDecoration(
                              //     border: Border.all()
                              // ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Icon(Icons.cloud_upload_rounded,size: 70,),
                                  ),
                                  Expanded(child: Center(child: Text("Upload Backside\n    of Aadhaar",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Card(
                            child: Container(
                              height: 150,
                              width: 203,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/frontside aadhaar.jpeg"),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                          )

                        ],
                      ),
                    ),





                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.blue,
                  border: Border.all()
                ),
                child: GestureDetector(
                    onTap: ()   {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Financial()),
                      );

                    },
                    child: Center(child: Text("SIGN UP",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.white),))),
              )
            ],


        ),
      ),
    );
  }
}
