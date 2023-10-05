import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/financial%20transection.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xfff545454),
      appBar: AppBar(
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: Colors.yellowAccent,

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

                      prefixIcon: Icon(Icons.arrow_back,color: Colors.blue,),
                      labelText: 'Search transaction',
                      suffixIcon: Icon(Icons.more_vert,color: Colors.blue,),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blue
                          )
                      )

                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("September 2023",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,
                color: Colors.white),),
                Text("\u{20B9}00,000",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,
                      color: Colors.white),)
              ],
            ),
            Divider(thickness: 4,color: Colors.grey,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all()
                    ),
                    child: Icon(Icons.person),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 140.0),
                      child: Text("Name",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,
                      color: Colors.black),),
                    ),
                    Text("September 26,2023 at 7.50 PM")
                  ],
                ),
                Text("\u{20B9}00,000")
              ],
            ),
            Divider(indent: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),
                    child: Icon(Icons.person),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 140.0),
                      child: Text("Name",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,
                          color: Colors.black),),
                    ),
                    Text("September 26,2023 at 7.50 PM")
                  ],
                ),
                Text("\u{20B9}00,000")
              ],
            ),
            Divider(indent: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),
                    child: Icon(Icons.person),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 140.0),
                      child: Text("Name",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,
                          color: Colors.black),),
                    ),
                    Text("September 26,2023 at 7.50 PM")
                  ],
                ),
                Text("\u{20B9}00,000")
              ],
            ),
            Divider(indent: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),
                    child: Icon(Icons.person),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 140.0),
                      child: Text("Name",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,
                          color: Colors.black),),
                    ),
                    Text("September 26,2023 at 7.50 PM")
                  ],
                ),
                Text("\u{20B9}00,000")
              ],
            ),
            Divider(indent: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),
                    child: Icon(Icons.person),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 140.0),
                      child: Text("Name",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,
                          color: Colors.black),),
                    ),
                    Text("September 26,2023 at 7.50 PM")
                  ],
                ),
                Text("\u{20B9}00,000")
              ],
            ),
            Divider(indent: 100,),
            SizedBox(height: 20,),
            Divider(thickness: 4,color: Colors.grey,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("August 2023",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,
                      color: Colors.white),),
                Text("\u{20B9}00,000",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,
                      color: Colors.white),)
              ],
            ),
            Divider(thickness: 4,color: Colors.grey,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),
                    child: Icon(Icons.person),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 140.0),
                      child: Text("Name",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,
                          color: Colors.black),),
                    ),
                    Text("September 26,2023 at 7.50 PM")
                  ],
                ),
                Text("\u{20B9}00,000")
              ],
            ),
            Divider(indent: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),
                    child: Icon(Icons.person),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 140.0),
                      child: Text("Name",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,
                          color: Colors.black),),
                    ),
                    Text("September 26,2023 at 7.50 PM")
                  ],
                ),
                Text("\u{20B9}00,000")
              ],
            ),
            Divider(indent: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),
                    child: Icon(Icons.person),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 140.0),
                      child: Text("Name",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,
                          color: Colors.black),),
                    ),
                    Text("September 26,2023 at 7.50 PM")
                  ],
                ),
                Text("\u{20B9}00,000")
              ],
            ),
            Divider(indent: 100,),

          ],
        ),
      ),
    );
  }
}
