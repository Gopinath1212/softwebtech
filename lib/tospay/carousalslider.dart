import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tospay/tospay/application.dart';

class Carousal extends StatefulWidget {
  const Carousal({super.key});

  @override
  State<Carousal> createState() => _CarousalState();
}

class _CarousalState extends State<Carousal> {
  late MediaQueryData queryData;
  List a=[
      "assets/qrcode.png",
      "assets/payment.jpg",
      "assets/payment2.png",
    ];
    List b=[
      "Unlock secure financial transactions with our application,enabling TOSPAY services for seamless banking and transaction",
      "Simplify bill payments for millions with our application,empowering users to effortlessly settle bills through the secure TOSPAY",
      "Stay connected with our application,offering seamless mobile and DTH recharge services for uninterrupted communication and entertainment",
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff545454),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                  Image.asset(a[index],height: 450),
                      SizedBox(height: 1,),
                      Text(b[index],
                          textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                );
              }
              ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: List.generate(a.length, (index) => Container(
                     height: 10,
                     width: 10,
                     margin: EdgeInsets.only(right: 5),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Colors.white
                     ),
                   )),
                 ),
               )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              margin: EdgeInsets.all(3),
              width: double.maxFinite,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.blueAccent,
                 border: Border.all()
               ),
             child: TextButton(
               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const App()),
                 );
               },
               child:Text("NEXT",style: TextStyle(color: Colors.white),) ,

             ),
              // child: FlatButton(
              //   child:Text("Next"),
              //   onPressed:(){},
              //   color:
              //
              // ),

            ),
          )
        ],
      ),



      // body: Column(
      //   children: [
      //   Stack(
      //     children: [
      //       Container(
      //         height: 700,
      //         child: CarouselSlider.builder(
      //             options: CarouselOptions(
      //               height: 900,
      //               aspectRatio:1/1,
      //               viewportFraction: 10.8,
      //               initialPage: 1,
      //               enableInfiniteScroll: true,
      //               reverse: false,
      //               autoPlay: false,
      //               autoPlayInterval: Duration(seconds: 5),
      //               autoPlayAnimationDuration: Duration(milliseconds: 800),
      //               autoPlayCurve: Curves.fastOutSlowIn,
      //               enlargeCenterPage: false,
      //               enlargeFactor: 0.3,
      //               //onPageChanged: callbackFunction,
      //               scrollDirection: Axis.horizontal,
      //             ),
      //             itemCount: 0,
      //             itemBuilder:  (BuildContext context, int itemIndex, int pageViewIndex)
      //
      //             {
      //               return Container(
      //
      //                 height: 900,
      //                 width: 400,
      //                 decoration:BoxDecoration(
      //                   borderRadius: BorderRadius.only(
      //
      //                     topLeft: Radius.circular(10.0),
      //                     topRight:Radius.circular(10.0),
      //                   ),
      //                   image: DecorationImage(
      //                       image: AssetImage("assets/upi.jpeg"),
      //                       fit: BoxFit.fill
      //                   ),
      //                 ) ,
      //
      //
      //
      //
      //
      //               );
      //
      //
      //             }
      //         ),
      //       ),
      //       Positioned(
      //         top: 20,
      //         right: 0,
      //         child: Text("SKIP"),
      //
      //       ),
      //       Positioned(
      //         bottom:-20,
      //         left: 0,
      //         child:Column(
      //           children: [
      //             Center(child: Text("Unlock Secure financial transactions with\n our application,enabling TOSPAY services for\n seamless banking and transaction.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),)),
      //             Container(
      //               height: 50,
      //               width: 250,
      //               decoration: BoxDecoration(
      //                 color: Colors.blueAccent,
      //                 border: Border.all()
      //               ),
      //               child: Center(child: Text("NEXT")),
      //             )
      //           ],
      //         )
      //       ),
      //     ],
      //   )
      //   ],
      // ),
    );
  }
}
