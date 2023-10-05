import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/profile.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff545454),
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        title: Text("EditProfile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),



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
            height: 280,
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



              ],
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> Profile())
              );
            },
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all()
              ),
              child: Center(child: Text("SUBMIT",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}
