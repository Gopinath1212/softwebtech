import 'dart:ui';

import 'package:flutter/material.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  late DateTime dateTime;
  late Duration duration;
  void initstate(){
    dateTime = DateTime.now();
    duration = Duration(minutes: 10);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Date Time Selected",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.grey[600]),),
                        Text("$DateTime",style: TextStyle(fontSize: 20),),
                        Text(
                          "$DateTime",
                          style: const TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Duration Selected",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                        ),
                        Text(
                          "$Duration",
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(height: 16,),
                  FloatingActionButton.extended(
                    onPressed: () async{
                       DateTime newDateTime =(await showDatePicker(
                        context:context,
                        initialDate:DateTime.now(),
                        firstDate:DateTime(DateTime.now().year -1),
                        lastDate:DateTime(DateTime.now().year +1),
                        // borderRadius:2,

                      )) as DateTime;
                      if(newDateTime!=null){
                       setState(() {
                          dateTime =newDateTime;
                       });


                      }
                    }, label: const Text("Material Calendar(Original)"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
