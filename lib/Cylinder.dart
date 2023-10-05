import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tospay/tospay/financial%20transection.dart';

class CYLINDER extends StatefulWidget {
  const CYLINDER({super.key});

  @override
  State<CYLINDER> createState() => _CYLINDERState();
}

class _CYLINDERState extends State<CYLINDER> {
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
        leading: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> Financial())
            );
          },
            child: Icon(Icons.arrow_back)),
        title: Text("Select your Gas Provider"),
        actions: [Icon(Icons.help_outline_outlined)],
      ),
      body: SingleChildScrollView(
        child: Column(
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
                                  image: AssetImage(a[itemIndex]),
                                  fit: BoxFit.fill
                              ),
                            ) ,


                          );

                        }

                    )
                ),
              ),
            ),
            Card(
              child: Container(
                height: 400,
                width: double.infinity,
                child: Column(
                  children: [
                    Text("All Billers",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black),),
                    Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/Bharat gas.png"),
                                fit: BoxFit.cover
                              ),

                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),

                          ),
                        ),
                      Text("Bharat Gas")
                      ],
                    ),
                    Divider(indent: 60,color: Colors.red,),
                    Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/Bharat gas.png"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),

                          ),
                        ),
                        Text("Bharat Gas - Commercial")
                      ],
                    ),
                    Divider(indent: 60,color: Colors.red,),
                    Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/hp gas.png"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),

                          ),
                        ),
                        Text("HP Gas")
                      ],
                    ),
                    Divider(indent: 60,color: Colors.red,),
                    Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/indian  gas.png"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),

                          ),
                        ),
                        Text("Indane Gas(Indian Oil)")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/cylinder.jpeg"),
                  fit: BoxFit.cover
                )
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
