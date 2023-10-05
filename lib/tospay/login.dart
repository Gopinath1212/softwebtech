import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/application.dart';
import 'package:tospay/tospay/otp.dart';
import 'package:tospay/tospay/signuppage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color(0xfff545454),
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        leading: GestureDetector(
            onTap: ()   {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  App()),
              );

            },
            child: Icon(Icons.arrow_back)),
      ),
      body:ListView(
        children: [
          SizedBox(height: 20,),
          Column(
            children: [
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
              SizedBox(height: 15,),

              Container(
                height: 400,
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),

                    ),border: Border.all()
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Text("Login and Start Journey \nWith Us",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              // width: 0.0 produces a thin "hairline" border
                              borderSide: const BorderSide(color: Colors.black, width: 1.0),
                            ),


                            labelText: 'Mobile Number',
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
                      child: TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              // width: 0.0 produces a thin "hairline" border
                              borderSide: const BorderSide(color: Colors.black, width: 1.0),
                            ),


                            labelText: 'Password',
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue
                                )
                            )

                        ),
                      ),
                    ),

                    Container(
                      height: 50,
                      width: 324,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight:  Radius.circular(10),
                          topLeft:  Radius.circular(10),
                          topRight:  Radius.circular(10),
                        ),
                        border: Border.all()
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonBar(
                            children: [
                              
                              ElevatedButton(

                                onPressed: (){

                                },
                                child: Text("PIN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                              )

                            ],
                          ),
                          ButtonBar(
                            children: [
                              ElevatedButton(
                                onPressed: (){

                                },
                                child: Text("OTP",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              )

                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Forget Password?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all()
                ),
                child: GestureDetector(
                  onTap: ()   {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  OTP()),
    );

    },
                    child: Center(child: Text("LOGIN",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),))),
              ),
              SizedBox(height: 15,),
              GestureDetector(
                onTap: ()   {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Signup()),
                  );

                },
                child: RichText(
                  text: TextSpan(
                      text: ("Create New Account?"),
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black


                      ),
                      children: <TextSpan>[
                        TextSpan(text: "Sign Up",style: TextStyle(fontSize:20,color: Colors.yellowAccent)),

                      ]
                  ),


                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
