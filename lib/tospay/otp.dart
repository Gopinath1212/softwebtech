import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tospay/tospay/login.dart';
import 'package:tospay/tospay/user%20kyc.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff545454),
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        leading: GestureDetector(
            onTap: ()   {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Login()),
              );

            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/logo.jpeg"),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 320,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight:  Radius.circular(10),
                bottomLeft:  Radius.circular(10),
                bottomRight:  Radius.circular(10),

              )

            ),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Text("Verify Pin Number",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value){
                              if(value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin1){},
                            decoration: InputDecoration(hintText: ""),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value){
                              if(value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin2){},
                            decoration: InputDecoration(hintText: ""),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value){
                              if(value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin3){},
                            decoration: InputDecoration(hintText: ""),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value){
                              if(value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin4){},
                            decoration: InputDecoration(hintText: ""),
                            style: Theme.of(context).textTheme.headline6,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,

                    border: Border.all(),
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight:  Radius.circular(20),
    bottomLeft:  Radius.circular(20),
    bottomRight:  Radius.circular(20),

    )
                  ),
                  child: GestureDetector(
                    onTap: ()   {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  UserKyc()),
                      );

                    },
                      child: Center(child: Text("VERIFY PIN",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
