import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tospay/tospay/financial%20transection.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  List a=[
    "assets/recharge.jpeg",
    "assets/recharge1.png",
    "assets/recharge2.png",
    "assets/recharge3.jpeg"
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
        title: Text("Mobile Recharge",
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide: const BorderSide(color: Colors.black, width: 1.0),
                      ),


                      labelText: 'Search by Number or Name',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blue
                          )
                      )

                  ),
                ),
              ),
            ),
            Card(
              child: Container(
                height: 300,
                width: double.infinity,
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
                                image: AssetImage("assets/mobile jio.png"),
                                fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all()
                            ),
                          ),
                          Column(
                            children: [
                              Text("xxxxxxxxxx",style: TextStyle(fontSize: 20,color: Colors.black),),
                              Text("xxxxxxxxxx",style: TextStyle(fontSize: 16,color: Colors.black)),
                            ],
                          ),
                          Icon(Icons.format_list_bulleted_outlined)

                        ],
                      ),
                    ),
                    Divider(thickness: 10,),
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
                                    image: AssetImage("assets/mobile jio.png"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                          Column(
                            children: [
                              Text("xxxxxxxxxx",style: TextStyle(fontSize: 20,color: Colors.black),),
                              Text("xxxxxxxxxx",style: TextStyle(fontSize: 16,color: Colors.black)),
                            ],
                          ),
                          Icon(Icons.format_list_bulleted_outlined)

                        ],
                      ),
                    ),
                    Divider(thickness: 10,),
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
                                    image: AssetImage("assets/mobile jio.png"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                          Column(
                            children: [
                              Text("xxxxxxxxxx",style: TextStyle(fontSize: 20,color: Colors.black),),
                              Text("xxxxxxxxxx",style: TextStyle(fontSize: 16,color: Colors.black)),
                            ],
                          ),
                          Icon(Icons.format_list_bulleted_outlined)

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                height: 500,
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("xxxxxxxxxx",style: TextStyle(fontSize: 20,color: Colors.black),),
                                Text("xxxxxxxxxx",style: TextStyle(fontSize: 16,color: Colors.black)),
                              ],
                            ),
                          ),


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
                                    image: AssetImage("assets/man1.jpeg"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("xxxxxxxxxx",style: TextStyle(fontSize: 20,color: Colors.black),),
                                Text("xxxxxxxxxx",style: TextStyle(fontSize: 16,color: Colors.black)),
                              ],
                            ),
                          ),


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
                                    image: AssetImage("assets/man2.jpeg"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("xxxxxxxxxx",style: TextStyle(fontSize: 20,color: Colors.black),),
                                Text("xxxxxxxxxx",style: TextStyle(fontSize: 16,color: Colors.black)),
                              ],
                            ),
                          ),

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
                                    image: AssetImage("assets/man3.jpeg"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("xxxxxxxxxx",style: TextStyle(fontSize: 20,color: Colors.black),),
                                Text("xxxxxxxxxx",style: TextStyle(fontSize: 16,color: Colors.black)),
                              ],
                            ),
                          ),


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
                                    image: AssetImage("assets/man4.jpeg"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all()
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("xxxxxxxxxx",style: TextStyle(fontSize: 20,color: Colors.black),),
                                Text("xxxxxxxxxx",style: TextStyle(fontSize: 16,color: Colors.black)),
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
