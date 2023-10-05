import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/edit%20profile.dart';

import 'menu.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff545454),
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  DrawerMenu()),
              );
            },
            child: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Text("My Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(height: 40,),
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Card(
                margin: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                    height: 300.0,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Name :",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                            Text("Jenifer",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Mob.Number :",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                            Text("+91-8754775456",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Email-ID :",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                            Text("User@gmail.com",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Aadhaar Number :",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                            Text("3755 4466 4233",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Pan Number :",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                            Text("PGDPC1566F",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Address :",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                            Text("xxxxxxxxxx",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey)),
                          ],
                        ),
                      ],
                    )
                ),
              ),
              Positioned(
                 bottom: 250,
                // top: 100,
                // left: 220,
                 right: 180,
                child: Center(
                    child:Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/man1.jpeg"),
                          fit: BoxFit.cover
                        ),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(),

                      ),
                    )

                ),
              ),

            ] ,
          ),
          SizedBox(height: 20,),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(50),
              border: Border.all()
            ),
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> EditProfile())
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.perm_identity_rounded,color: Colors.white,),
                  Text("EDIT PROFILE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),)
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
