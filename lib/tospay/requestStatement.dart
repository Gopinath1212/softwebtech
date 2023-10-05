import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/passbook.dart';

class Statement extends StatefulWidget {
  const Statement({super.key});

  @override
  State<Statement> createState() => _StatementState();
}

class _StatementState extends State<Statement> {
  bool? isChecked=false;
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
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 350.0),
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>PassBook())

                    );
                  },
                  child: Icon(Icons.arrow_back,size: 30,color: Colors.white,)),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Request Account Statement",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 220.0),
              child: Expanded(child: Text("Select time period",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    checkColor:Colors.white,
                    activeColor: Colors.blueAccent,
                    tristate: false,
                    onChanged: (newBool){
                      setState(() {
                        isChecked=newBool;
                      });
                    },
                  ),
                  Text("Last 1 month",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(height: 20,),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    activeColor: Colors.blueAccent,
                    tristate: false,
                    onChanged: (newBool){
                      setState(() {
                        isChecked=newBool;
                      });
                    },
                  ),
                  Text("Last 3 month",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(height: 20,),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    activeColor: Colors.blueAccent,
                    tristate: false,
                    onChanged: (newBool){
                      setState(() {
                        isChecked=newBool;
                      });
                    },
                  ),
                  Text("Last 6 month",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(height: 20,),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    activeColor: Colors.blueAccent,
                    tristate: false,
                    onChanged: (newBool){
                      setState(() {
                        isChecked=newBool;
                      });
                    },
                  ),
                  Text("Last 1 year",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(height: 20,),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    activeColor: Colors.blueAccent,
                    tristate: false,
                    onChanged: (newBool){
                      setState(() {
                        isChecked=newBool;
                      });
                    },
                  ),
                  Text("FY 2023-24(Tax Purpose)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white))

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(height: 20,),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    activeColor: Colors.blueAccent,
                    tristate: false,
                    onChanged: (newBool){
                      setState(() {
                        isChecked=newBool;
                      });
                    },
                  ),
                  Text("Custom Duration",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.white))

                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(

                    // enabledBorder: const OutlineInputBorder(
                    //   // width: 0.0 produces a thin "hairline" border
                    //   borderSide: const BorderSide(color: Colors.blueAccent, width: 5.0),
                    // ),


                    labelText: 'Enter email to receive Statement',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    )

                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all()
              ),
              child: Center(child: Text("Confirm",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),)),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
