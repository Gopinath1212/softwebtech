import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/passbook.dart';

class Automatic extends StatefulWidget {
  const Automatic({super.key});

  @override
  State<Automatic> createState() => _AutomaticState();
}

class _AutomaticState extends State<Automatic> {
  bool? isChecked=false;
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
              MaterialPageRoute(builder:(context)=>PassBook())
            );
          },
            child: Icon(Icons.arrow_back)),
        title: Text("Automatic add Money"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Card(
              child: Container(
                height: 420,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\u{20B9}1000"),
                          Icon(Icons.arrow_downward)
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Automatically add"),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(

                          enabledBorder: const OutlineInputBorder(
                            // width: 0.0 produces a thin "hairline" border
                            borderSide: const BorderSide(color: Colors.blueAccent, width: 3.0),
                          ),


                            labelText: '\u{20B9}',
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue
                                )
                            )

                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Container(
                         height: 40,
                         width: 100,

                         child: ElevatedButton(
                           onPressed: (){

                           },
                           child: Center(child: Text("\u{20B9}500")),
                         ),
                       ),
                       Container(
                         height: 40,
                         width: 100,

                         child: ElevatedButton(
                           onPressed: (){

                           },
                           child: Center(child: Text("\u{20B9}1000")),
                         ),
                       ),
                       Container(
                         height: 40,
                         width: 100,

                         child: ElevatedButton(
                           onPressed: (){

                           },
                           child: Center(child: Text("\u{20B9}2000")),
                         ),
                       ),

                     ],
                   ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                            text: ("By proceeding you agree to the"),
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black


                            ),
                            children: <TextSpan>[
                              TextSpan(text: "Terms and Condition",style: TextStyle(fontSize:15,color: Colors.blueAccent)),

                            ]
                        ),


                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all()
                        ),
                        child: Center(child: Text("Proceed",style: TextStyle(fontSize: 18,color: Colors.white),)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("How does it work",style: TextStyle(fontSize: 18,color: Colors.blueAccent),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage("assets/automatic.jpeg"),
                      fit: BoxFit.cover
                    )
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
