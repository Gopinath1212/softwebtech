import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tospay/addNewVEHICLE.dart';
import 'package:tospay/tospay/financial%20transection.dart';

class FASTag extends StatefulWidget {
  const FASTag({super.key});

  @override
  State<FASTag> createState() => _FASTagState();
}

class _FASTagState extends State<FASTag> {
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
        title: Text("FASTag Recharge",
          style: TextStyle(fontSize: 20,fontWeight:FontWeight.w900,color: Colors.black),),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Column(
                    children: [
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
                                Text("ICICI Bank Fastag",
                                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                                      color: Colors.black),),
                                Text("xxxxxxx"),

                              ],
                            ),
                            Icon(Icons.more_vert)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Divider(endIndent: 10,color: Colors.red,),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.av_timer),
                          Text("Last Recharged:")
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> VEHICLE())
                  );
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all()
                  ),
                  child: Center(child: Text("ADD NEW VEHICLE",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                  color: Colors.white),)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
