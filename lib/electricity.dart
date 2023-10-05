import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tospay/tospay/financial%20transection.dart';

class Electricity extends StatefulWidget {
  const Electricity({super.key});

  @override
  State<Electricity> createState() => _ElectricityState();
}

class _ElectricityState extends State<Electricity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xfff545454),
      appBar: AppBar(
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: TextFormField(
                  decoration: const InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide: const BorderSide(color: Colors.black, width: 1.0),
                      ),


                      labelText:"\u{20B9}  Enter  Amount",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blue
                          )
                      )

                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child:CarouselSlider.builder(
                            options: CarouselOptions(
                              height: 200,
                              aspectRatio:1/1,
                              viewportFraction: 10.8,
                              initialPage: 1,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 3),
                              autoPlayAnimationDuration: Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: false,
                              enlargeFactor: 0.3,
                              // onPageChanged: callbackFunction,
                              scrollDirection: Axis.horizontal,
                            ),
                            itemCount:5,
                            itemBuilder:  (BuildContext context, int itemIndex, int pageViewIndex)

                            {
                              return Container(

                                height: 600,
                                width: 700,
                                decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage("assets/qr scaner1.jpeg"),
                                      fit: BoxFit.fill
                                  ),
                                ) ,


                              );

                            }

                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(right: 250.0),
                            child: Text("Recent",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,
                            color: Colors.black),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/Bescom.png"),
                                          fit: BoxFit.cover
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all()
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text("BESCOM Bangalore",
                                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                    Text("xxxxxxx"),

                                  ],
                                ),
                              Icon(Icons.more_vert)
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 80.0),
                            child: Divider(endIndent: 10,color: Colors.red,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/Tamilnadu.jpeg"),
                                      fit: BoxFit.cover
                                    ),
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all()
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(" Tamil Nadu Electricity Board",
                                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                    Text("xxxxxxx"),

                                  ],
                                ),
                               Icon(Icons.more_vert)
                              ],
                            ),
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
                      height: 600,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text("Billers in Karnataka",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,
                                color: Colors.black),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/Bescom.png"),
                                      fit: BoxFit.cover
                                    ),
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all()
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 150.0),
                                child: Row(
                                  children: [
                                    Text("BESCOM Bangalore",
                                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80.0),
                            child: Divider(endIndent: 10,color: Colors.red,),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/Bescom.png"),
                                          fit: BoxFit.cover
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all()
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Text("Chamundeshwari Electricity Supply Corp\n Ltd(CESCOM)",textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,
                                        color: Colors.black),),
                                ],
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80.0),
                            child: Divider(endIndent: 10,color: Colors.red,),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/Gescom.png"),
                                          fit: BoxFit.cover
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all()
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 30.0),
                                child: Row(
                                  children: [
                                    Text("Gulbarga Electricity Supply Corp Ltd",
                                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80.0),
                            child: Divider(endIndent: 10,color: Colors.red,),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/Bescom.png"),
                                          fit: BoxFit.cover
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all()
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 35.0),
                                child: Row(
                                  children: [
                                    Text("Hubli Electricity Supply Company Ltd\n(HESCOM)Rural",
                                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80.0),
                            child: Divider(endIndent: 10,color: Colors.red,),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/Mescom.png"),
                                          fit: BoxFit.cover
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all()
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 30.0),
                                child: Row(
                                  children: [
                                    Text("Mangalore Electricity Supply Company\nLTD(Non RAPDR)",
                                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80.0),
                            child: Divider(endIndent: 10,color: Colors.red,),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/Mescom.png"),
                                          fit: BoxFit.cover
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all()
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 30.0),
                                child: Row(
                                  children: [
                                    Text("Mangalore Electricity Supply Company\nLTD(RAPDRP Towns)",
                                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,
                                          color: Colors.black),),
                                  ],
                                ),
                              ),

                            ],
                          ),

                        ],
                      ),

                    ),
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
