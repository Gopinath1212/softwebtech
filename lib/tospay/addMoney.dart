import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tospay/tospay/financial%20transection.dart';
import 'package:tospay/tospay/passbook.dart';
import 'package:tospay/tospay/spendAnalytics.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({super.key});

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff545454),
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        leading: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>Financial())
            );
          },
            child: Icon(Icons.arrow_back,color: Colors.black,size: 30,)),
        title: Padding(
          padding: const EdgeInsets.only(left: 150.0),
          child: Text("Help",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        ),
        actions: [Text("Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))],



      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),

            Card(
              child: Container(
                height: 250,
                width: double.infinity,
                color: Theme.of(context).cardColor,

                child: Column(
                  children: [
                    SizedBox(width: 20,),
                    Text("Total Wallet Balance",style: TextStyle(fontWeight: FontWeight.bold,fontSize:18 ),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("\u{20B9}0",style: TextStyle(fontWeight: FontWeight.bold,fontSize:18 )),
                          Icon(Icons.arrow_downward)
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 65,
                                  height: 65,
                                  child: Container(
                                    decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(50),
                                      border: Border.all()
                                    ),
                                    child:  Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.qr_code,
                                          size: 34,
                                          color: Colors.blue.shade300,),
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => DashboardPage()));
                                },
                              ),
                            ),
                            Text('Pay',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 65,
                                  height: 65,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all()
                                    ),
                                    child:  Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.food_bank_outlined,
                                          size: 34,
                                          color: Colors.blue.shade300,),
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => DashboardPage()));
                                },
                              ),
                            ),
                            Text('Transfer to Bank',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 65,
                                  height: 65,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all()
                                    ),
                                    child:  Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.wallet_giftcard,
                                          size: 34,
                                          color: Colors.blue.shade300,),
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => DashboardPage()));
                                },
                              ),
                            ),
                            Text('Sent a Gift\n Voucher',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 9.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                              child: InkWell(
                                child: Container(
                                  width: 65,
                                  height: 65,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all()
                                    ),
                                    child:  Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.wallet,
                                          size: 34,
                                          color: Colors.blue.shade300,),
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => DashboardPage()));
                                },
                              ),
                            ),
                            Text('Automatic\nAdd Money',
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
                  ],
                ),
              ),
            ),

            Card(
              child: Container(
                height: 350,
                width: double.infinity,
                  color: Theme.of(context).cardColor,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          RichText(
                            text: TextSpan(
                                text: ("Add Money to"),
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black


                                ),
                                children: <TextSpan>[
                                  TextSpan(text: "Tos pay Wallet",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color:Colors.blueAccent,)),

                                ]
                            ),


                          ),
                          Icon(Icons.arrow_downward)
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.lime,
                        border: Border.all()
                      ),
                      child: Center(child: Text("Add Money From any Bank Account using UPI",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),)),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              // width: 0.0 produces a thin "hairline" border
                              borderSide: const BorderSide(color: Colors.black, width: 1.0),
                            ),


                            labelText: '\u{20B9}Enter Amount',
                            suffixText: 'Apply Promo',
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue
                                )
                            )

                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:Border.all()
                            ),
                            child: Center(child: Text("+\u{20B9}100",style: TextStyle(fontSize: 15))),
                          ),
                          Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:Border.all()
                            ),
                            child: Center(child: Text("+\u{20B9}200",style: TextStyle(fontSize: 15))),
                          ),
                          Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:Border.all()
                            ),
                            child: Center(child: Text("+\u{20B9}500",style: TextStyle(fontSize: 15))),
                          ),
                          Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:Border.all()
                            ),
                            child: Center(child: Text("+\u{20B9}1000",style: TextStyle(fontSize: 15),)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all()
                        ),
                        child: Center(child: Text("Proceed",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900)),),
                      ),
                    )
                  ],
                )
              ),
            ),
            Card(
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/transfer.png"),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),
            Card(
              child: Container(
                height: 430,
                width: double.infinity,
                color: Theme.of(context).cardColor,
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> PassBook())
                          );
                        },
                        child: Row(
                          children: [
                            Icon(Icons.book_outlined,size: 25,),
                            SizedBox(width: 10,),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 175.0),
                                  child: Text("Passbook",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
                                ),
                                Text("Check your payments from Tos Pay wallet",style: TextStyle(decoration: TextDecoration.underline), )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> SpendAnalytic())
                          );
                        },
                        child: Row(
                          children: [
                            Icon(Icons.filter_list,size: 25,),
                            SizedBox(width: 10,),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 52.0),
                                  child: Text("Spend Analytics",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
                                ),
                                Text("View all monthly expenditures",style: TextStyle(decoration: TextDecoration.underline), )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.attach_money_outlined,size: 25,),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 25.0),
                                child: Text("Set a Payment Reminder",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
                              ),
                              Text("Never miss a payment with reminders",style: TextStyle(decoration: TextDecoration.underline), )
                            ],
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.book_outlined,size: 25,),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              Text("Request Wallet Statement",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
                              Text("Get your payment details on e-mail ",style: TextStyle(decoration: TextDecoration.underline), )
                            ],
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.manage_accounts_outlined,size: 25,),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 55.0),
                                child: Text("Manage Beneficiaries",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
                              ),
                              Text("View,add and remove your Beneficiaries",style: TextStyle(decoration: TextDecoration.underline), )
                            ],
                          ),

                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
