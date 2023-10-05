import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tospay/tospay/financial%20transection.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
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
        title: Text("TosPay Wallet",
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
                  height: 400,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(right: 220.0),
                        child: Text("Low Balance",
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,
                              color: Colors.red),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 240.0),
                        child: Text("\u{20B9} 0",
                          style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,
                              color: Colors.red),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Divider(endIndent:10,color: Colors.grey,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 220.0),
                        child: Text("Topup Wallet",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700,
                              color: Colors.black),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                                border: Border.all()
                          ),
                          child: Center(
                            child: Text("PROCEED TO TOPUP",
                                style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                                color: Colors.white)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
