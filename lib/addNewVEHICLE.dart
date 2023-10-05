import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class VEHICLE extends StatefulWidget {
  const VEHICLE({super.key});

  @override
  State<VEHICLE> createState() => _VEHICLEState();
}

class _VEHICLEState extends State<VEHICLE> {
  List a=[
    "assets/phonepay.jpeg",
    "assets/phonepay1.jpeg",
    "assets/phonepay2.jpeg",
    "assets/phonepay3.png",
    "assets/phonepay4.png"

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xfff545454),
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
       title: Card(
         child: TextFormField(
           decoration: const InputDecoration(
               enabledBorder: const OutlineInputBorder(
                 // width: 0.0 produces a thin "hairline" border
                 borderSide: const BorderSide(color: Colors.black, width: 1.0),
               ),

               prefixIcon: Icon(Icons.arrow_back),
               labelText: 'Type your FASTag Provider Name',
               suffixIcon: Icon(Icons.help_outline_outlined),
               focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                       color: Colors.blue
                   )
               )

           ),
         ),
       ),

      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Card(
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
                                image: AssetImage(a[itemIndex]),
                                fit: BoxFit.fill
                            ),
                          ) ,


                        );

                      }

                  )
              ),
            ),
            Card(
              child: Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.comment_bank),
                    Text("How to find your FASTag Bank?",
                    style: TextStyle(fontSize: 15,color: Colors.blue),)
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                height: 850,
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
                                image: DecorationImage(
                                    image: AssetImage("assets/IDFC.png"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("IDFC FIRST Bank-FasTag"),
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
                                image: DecorationImage(
                                    image: AssetImage("assets/AirtelBank.jpeg"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Airtel Payments Bank NETC FASTag"),
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
                                image: DecorationImage(
                                    image: AssetImage("assets/Axiss.png"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Axis Bank Fastag"),
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
                                image: DecorationImage(
                                    image: AssetImage("assets/Baroda.png"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bank of Baroda-Fastag"),
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
                                image: DecorationImage(
                                    image: AssetImage("assets/HDFC.png"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("HDFC Bank-Fastag"),
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
                                image: DecorationImage(
                                    image: AssetImage("assets/ICICI.png"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("ICICI Bank Fastag"),
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
                                image: DecorationImage(
                                    image: AssetImage("assets/IDBI BAnk.png"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("IDBI Bank Fastag"),
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
                                image: DecorationImage(
                                    image: AssetImage("assets/SBI.png"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("State Bank of India(SBI)-NETC FASTag"),
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
                          padding: const EdgeInsets.all(8.0),
                          child: Text("AU Bank Fastag"),
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
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bandhan Bank Fastag"),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )

    );
  }
}
