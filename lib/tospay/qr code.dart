import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/financial%20transection.dart';
import 'package:tospay/tospay/showpaymentscan.dart';

class QRCODE extends StatefulWidget {
  const QRCODE({super.key});

  @override
  State<QRCODE> createState() => _QRCODEState();
}

class _QRCODEState extends State<QRCODE> {
  List a=[
    "assets/man.jpeg",
    "assets/man1.jpeg",
    "assets/man2.jpeg",
    "assets/man3.jpeg",
    "assets/man4.jpeg"
  ];
  List b=[
    "Man",
    "Women",
    "Man",
    "Women",
    "Man"

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff545454),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 320.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Financial()),
                  );
                },
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all()
                  ),
                  child: Center(child: Text("X",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Center(child: Image.asset("assets/qr scaner1.jpeg")),
            SizedBox(height: 10,),
            Text("Enable Camera Access",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 10,),
            Text("This enable you to scan QR codes,do KYC""Process,upload profile photos,share photos with""friends,and helps you attend live digital events",textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.grey),),
            SizedBox(height: 10,),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all()
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.camera_alt_outlined,color: Colors.white,),
                  Text("Enable camera",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),

                ],
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Scanner()),
                );
              },
              child: Container(
                height: 40,
                width: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all()
                ),
                child: Center(child: Text("Show Payment code",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,color: Colors.blueAccent),)),
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: const InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: const BorderSide(color: Colors.black, width: 1.0),
                  ),

                suffixIcon: Icon(Icons.contact_mail,color: Colors.black87,),
                labelText: 'Enter Mobile Number Or Name',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white
                      )
                  )

              ),
            ),
            SizedBox(height: 10,),
            Text("Recents",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
            Container(
              height: 150,
              // width: 100,
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),


                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: DecorationImage(
                                    image: AssetImage(a[index]),
                                    fit: BoxFit.cover
                                  )
                                ),

                                  ),

                            ),
                           Text(b[index])
                          ],
                        ),



                      ),
                    );

                  }
              ),

            ),
            
          ],
        ),
      ),
    );
  }
}
