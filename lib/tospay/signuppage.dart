import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff545454),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            Container(
              height: 400,
              width: 350,
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
                  Text("Sign Up Now To Register \n Yourself to Our Network",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            // width: 0.0 produces a thin "hairline" border
                            borderSide: const BorderSide(color: Colors.black, width: 1.0),
                          ),


                          labelText: 'Name',
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


                          labelText: 'Email',
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
                    width: 329,
                    decoration: BoxDecoration(
                      border: Border.all()
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Select Role"),
                        DropdownButton<String>(
                          items: <String>['Role 1', 'Role 2', 'Role 3', ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        )
                      ],
                    ),
                  ),



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
              child: Center(child: Text("SIGN UP",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: ()   {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Login()),
                );

              },
              child: RichText(
                text: TextSpan(
                    text: ("Already Have Account?"),
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black


                    ),
                    children: <TextSpan>[
                      TextSpan(text: "Login",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.redAccent)),

                    ]
                ),


              ),
            ),
          ],
        ),
      ),
    );
  }
}
