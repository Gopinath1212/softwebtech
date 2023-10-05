import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/financial%20transection.dart';

class DATACARD extends StatefulWidget {
  const DATACARD({super.key});

  @override
  State<DATACARD> createState() => _DATACARDState();
}
List<String>option=['option 1','option 2'];
class _DATACARDState extends State<DATACARD> {
 String CurrentOption=option[0];
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Datacard Recharge or Bill Payment",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,
              color: Colors.black),),
            ),
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RadioMenuButton(
                    value: option[0],
                    groupValue:CurrentOption,
                    onChanged: (value){
                      setState(() {
                        CurrentOption=value.toString();
                      });
                    }, child:Text("prepaid") ,
                  ),
                  RadioMenuButton(
                    value: option[1],
                    groupValue:CurrentOption,
                    onChanged: (value){
                      setState(() {
                        CurrentOption=value.toString();
                      });
                    }, child:Text("Postpaid") ,
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    // enabledBorder: const OutlineInputBorder(
                    //   // width: 0.0 produces a thin "hairline" border
                    //   borderSide: const BorderSide(color: Colors.black, width: 1.0),
                    // ),


                    labelText: 'Enter Name or Mobile Number',labelStyle: TextStyle(color: Colors.white,),
                    suffixIcon: Icon(Icons.contact_mail,color: Colors.blue,)
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: Colors.blue
                    //     )
                    // )

                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 230.0),
              child: Text("My Number",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all()
                    ),
                    child: Center(child: Text("sk",style: TextStyle(fontSize: 18,color: Colors.black),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("xxxxxxxxxx",style:TextStyle(fontSize: 16,color: Colors.black),),
                )
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Text("Select a Contact",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),
                    child: Center(child: Text("sk",style: TextStyle(fontSize: 18,color: Colors.black),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("xxxxxxxxxx",style:TextStyle(fontSize: 16,color: Colors.black),),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),
                    child: Center(child: Text("sk",style: TextStyle(fontSize: 18,color: Colors.black),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("xxxxxxxxxx",style:TextStyle(fontSize: 16,color: Colors.black),),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),
                    child: Center(child: Text("sk",style: TextStyle(fontSize: 18,color: Colors.black),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("xxxxxxxxxx",style:TextStyle(fontSize: 16,color: Colors.black),),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),
                    child: Center(child: Text("sk",style: TextStyle(fontSize: 18,color: Colors.black),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("xxxxxxxxxx",style:TextStyle(fontSize: 16,color: Colors.black),),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),
                    child: Center(child: Text("sk",style: TextStyle(fontSize: 18,color: Colors.black),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("xxxxxxxxxx",style:TextStyle(fontSize: 16,color: Colors.black),),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),
                    child: Center(child: Text("sk",style: TextStyle(fontSize: 18,color: Colors.black),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("xxxxxxxxxx",style:TextStyle(fontSize: 16,color: Colors.black),),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),
                    child: Center(child: Text("sk",style: TextStyle(fontSize: 18,color: Colors.black),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("xxxxxxxxxx",style:TextStyle(fontSize: 16,color: Colors.black),),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
