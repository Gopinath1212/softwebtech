import 'dart:ui';

import 'package:flutter/material.dart';

class Reminder extends StatefulWidget {
  const Reminder({super.key});

  @override
  State<Reminder> createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff545454),
      body: Column(
        children: [
          Row(
            children: [
              Icon(Icons.arrow_back),
              Text("+Add New")
            ],
          ),
          Column(
            children: [
              Text("Payment Reminder", 
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              
            ],
          ),
          Card(
            child: Container(
              height: 400,
              width: double.infinity,
              child: Column(
                children: [
                  Text("You don't have any Payment reminders now\ncreate one and we will remind you when it's\ndone")
                ],
              ),
            ),
          )
          
        ],
      ),
    );
  }
}
