import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tospay/Cylinder.dart';
import 'package:tospay/Datacard.dart';
import 'package:tospay/banktransfer.dart';
import 'package:tospay/cableTV.dart';
import 'package:tospay/dth.dart';
import 'package:tospay/electricity.dart';
import 'package:tospay/fastag.dart';
import 'package:tospay/mobile.dart';
import 'package:tospay/postPaid.dart';
import 'package:tospay/tospay/addMoney.dart';
import 'package:tospay/tospay/menu.dart';
import 'package:tospay/tospay/qr%20code.dart';
import 'package:tospay/tospay/tosPayKYC.dart';
import 'package:tospay/wallet.dart';
import 'package:tospay/water.dart';

import '../History.dart';
import '../upi.dart';

class Financial extends StatefulWidget {
  const Financial({super.key});

  @override
  State<Financial> createState() => _FinancialState();
}

class _FinancialState extends State<Financial> {
  int a=0;
  final Page=[
    // Financial()

  ]  ;

  void tap(index)
  {
    setState(() {
      a=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xfff545454),
      appBar: AppBar(
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child:Center(
          child: Column(
            children: [
              Card(
                child: Container(
                    height: 250,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue.shade300,
                          Colors.blueAccent,
                          Colors.blue.shade300,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: ()
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  DrawerMenu()),
                                  );

                                },

                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.list),
                                )),
                            Icon(Icons.power_settings_new_outlined)
                          ],
                        ),

                        SizedBox(height: 15,),
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                  image: AssetImage("assets/loan person.jpeg"),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        Text("TOS PAY",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        SizedBox(height: 15,),
                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              border: Border.all()
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Wallet Balance",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white)),
                              Text("Rs.0.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white))
                            ],
                          ),
                        )

                      ],
                    )//declare your widget here
                ),
              ),
              SizedBox(height: 24,),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 4,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.qr_code,
                                              size: 34,
                                              color: Colors.blue.shade300,),
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: () {
                                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => QRCODE()));
                                },
                              ),
                            ),
                            Text('QR Code',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.money,
                                              size: 34,
                                              color: Colors.blue.shade300,),
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: () {
                                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => AddMoney()));
                                },
                              ),
                            ),
                            Text('Add Money',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.card_giftcard,
                                              size: 34,
                                              color: Colors.blue.shade300,),
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: () {
                                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => TOSPAYKYC()));
                                },
                              ),
                            ),
                            Text('KYC',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.wallet,
                                              size: 34,
                                              color: Colors.blue.shade300,),
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: () {
                                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Wallet()));
                                },
                              ),
                            ),
                            Text('wallet',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 24,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.qr_code,
                                              size: 34,
                                              color: Colors.blue.shade300,),
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: () {
                                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => BankTransfer()));
                                },
                              ),
                            ),
                            Text('Bank  Transfer',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.money,
                                              size: 34,
                                              color: Colors.blue.shade300,),
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: () {
                                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => UPI()));
                                },
                              ),
                            ),
                            Text('Wire Transfer',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.card_giftcard,
                                              size: 34,
                                              color: Colors.blue.shade300,),
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: () {
                                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => History()));
                                },
                              ),
                            ),
                            Text('History',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.wallet,
                                              size: 34,
                                              color: Colors.blue.shade300,),
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: () {
                                  // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => DashboardPage()));
                                },
                              ),
                            ),
                            Text('Settings',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 24,),
                    Text("Recharge",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.mobile_friendly,
                                              size: 34,
                                              color: Colors.blue.shade300,),
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: () {
                                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Mobile()));
                                },
                              ),
                            ),
                            Text('Mobile',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.car_crash,
                                              size: 34,
                                              color: Colors.blue.shade300,),
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: () {
                                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => FASTag()));
                                },
                              ),
                            ),
                            Text('FASTag',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.connected_tv_sharp,
                                              size: 34,
                                              color: Colors.blue.shade300,),
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: () {
                                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => DTH()));
                                },
                              ),
                            ),
                            Text('DTH',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.tv_outlined,
                                              size: 34,
                                              color: Colors.blue.shade300,),
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: () {
                                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => CABLETV()));
                                },
                              ),
                            ),
                            Text('Cable TV',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 24,),
                    Text("Utilites",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.mobile_friendly,
                                              size: 34,
                                              color: Colors.blue.shade300,),
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: () {
                                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => POSTPAID()));
                                },
                              ),
                            ),
                            Text('Postpaid',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.highlight_outlined,
                                              size: 34,
                                              color: Colors.blue.shade300,),
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: () {
                                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => DATACARD()));
                                },
                              ),
                            ),
                            Text('Data Card',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.water_drop_rounded,
                                              size: 34,
                                              color: Colors.blue.shade300,),
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: () {
                                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Water()));
                                },
                              ),
                            ),
                            Text('Water',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.electric_meter_sharp,
                                              size: 34,
                                              color: Colors.blue.shade300,),
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: () {
                                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Electricity()));
                                },
                              ),
                            ),
                            Text('Electricity',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.gas_meter,
                                              size: 34,
                                              color: Colors.blue.shade300,),
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => CYLINDER()));
                                },
                              ),
                            ),
                            Text('Book A Cylinder',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Card(
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child:
                                      Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                              Color(0xfffffffb),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child:  Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.health_and_safety_rounded,
                                              size: 34,
                                              color: Colors.blue.shade300,),
                                          ],
                                        ),
                                      )
                                  ),
                                ),
                                onTap: () {
                                  // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => DashboardPage()));
                                },
                              ),
                            ),
                            Text('Insurance ',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                        // Column(
                        //   children: [
                        //     Padding(
                        //       padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                        //       child: InkWell(
                        //         child: Container(
                        //           width: 75,
                        //           height: 75,
                        //           child: Card(
                        //               semanticContainer: true,
                        //               clipBehavior: Clip.antiAliasWithSaveLayer,
                        //               child:
                        //               Container(
                        //                 decoration: BoxDecoration(
                        //                   gradient: LinearGradient(
                        //                     colors: [
                        //                       Color(0xfffffffb),
                        //                       Color(0xfffffffb),
                        //                       Color(0xfffffffb),
                        //                     ],
                        //                     begin: Alignment.topLeft,
                        //                     end: Alignment.bottomRight,
                        //                   ),
                        //                 ),
                        //                 child:  Column(
                        //                   mainAxisAlignment: MainAxisAlignment.center,
                        //                   children: [
                        //                     Icon(Icons.cast_for_education,
                        //                       size: 34,
                        //                       color: Colors.blue.shade300,),
                        //                   ],
                        //                 ),
                        //               )
                        //           ),
                        //         ),
                        //         onTap: () {
                        //           // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => DashboardPage()));
                        //         },
                        //       ),
                        //     ),
                        //     Text('Education Fees',
                        //         style: TextStyle(
                        //             fontFamily: 'Raleway',
                        //             fontSize: 9.0,
                        //             color: Colors.black,
                        //             fontWeight: FontWeight.bold)
                        //     ),
                        //   ],
                        // ),
                        // Column(
                        //   children: [
                        //     Padding(
                        //       padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                        //       child: InkWell(
                        //         child: Container(
                        //           width: 75,
                        //           height: 75,
                        //           child: Card(
                        //               semanticContainer: true,
                        //               clipBehavior: Clip.antiAliasWithSaveLayer,
                        //               child:
                        //               Container(
                        //                 decoration: BoxDecoration(
                        //                   gradient: LinearGradient(
                        //                     colors: [
                        //                       Color(0xfffffffb),
                        //                       Color(0xfffffffb),
                        //                       Color(0xfffffffb),
                        //                     ],
                        //                     begin: Alignment.topLeft,
                        //                     end: Alignment.bottomRight,
                        //                   ),
                        //                 ),
                        //                 child:  Column(
                        //                   mainAxisAlignment: MainAxisAlignment.center,
                        //                   children: [
                        //                     Icon(Icons.kitchen_outlined,
                        //                       size: 34,
                        //                       color: Colors.blue.shade300,),
                        //                   ],
                        //                 ),
                        //               )
                        //           ),
                        //         ),
                        //         onTap: () {
                        //           // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => DashboardPage()));
                        //         },
                        //       ),
                        //     ),
                        //     Text('Book A Cylinder',
                        //         style: TextStyle(
                        //             fontFamily: 'Raleway',
                        //             fontSize: 9.0,
                        //             color: Colors.black,
                        //             fontWeight: FontWeight.bold)
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                    SizedBox(height: 24,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0,top: 12.0),
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("assets/transfer.png"),
                                fit: BoxFit.cover
                            ),
                            gradient: LinearGradient(
                              colors: [
                                Colors.yellow,
                                Colors.orangeAccent,
                                Colors.yellow.shade300,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Container(
                          ), //declare your widget here
                        ),
                      ),
                    ),

                    SizedBox(height: 50,),
                    BottomNavigationBar(
                      backgroundColor: Colors.blue,
                      items: [


                        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.black),
                        BottomNavigationBarItem(icon: Icon(Icons.perm_identity),label: 'Profile',backgroundColor: Colors.black),
                        BottomNavigationBarItem(icon: Icon(Icons.qr_code),label: 'QR Code',backgroundColor: Colors.black),
                        BottomNavigationBarItem(icon: Icon(Icons.notification_add),label: 'Notification',backgroundColor: Colors.black),
                        BottomNavigationBarItem(icon: Icon(Icons.help),label: 'Help',backgroundColor: Colors.black),

                      ],

                      currentIndex: a,
                      onTap: tap,


                    ),
                    // BottomNavigationBar(
                    //   backgroundColor: Colors.black,
                    //   items: [
                    //     BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
                    //     BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
                    //     BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
                    //     BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
                    //     BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home')
                    //   ],
                    // )

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
