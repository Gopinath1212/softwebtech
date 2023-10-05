import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tospay/tospay/financial%20transection.dart';

class DTH extends StatefulWidget {
  const DTH({super.key});

  @override
  State<DTH> createState() => _DTHState();
}

class _DTHState extends State<DTH> {
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
        title: Text("Select Provider",
          style: TextStyle(fontSize: 20,fontWeight:FontWeight.w900,color: Colors.black),),
        actions: [Icon(Icons.help_outline_outlined)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                                image: AssetImage("assets/qr scaner1.jpeg"),
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
                height: 400,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/man.jpeg"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                          Text("Airtel Digital Tv",
                          style: TextStyle(fontSize: 18),)
                        ],
                      ),
                    ),
                    Divider(thickness: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/man.jpeg"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                          Text("Airtel Digital Tv",
                            style: TextStyle(fontSize: 18),)
                        ],
                      ),
                    ),
                    Divider(thickness: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/man.jpeg"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                          Text("Airtel Digital Tv",
                            style: TextStyle(fontSize: 18),)
                        ],
                      ),
                    ),
                    Divider(thickness: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/man.jpeg"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                          Text("Airtel Digital Tv",
                            style: TextStyle(fontSize: 18),)
                        ],
                      ),
                    ),
                    Divider(thickness: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/man.jpeg"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                          Text("Airtel Digital Tv",
                            style: TextStyle(fontSize: 18),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
