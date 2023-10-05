import 'dart:ui';

import 'package:flutter/material.dart';

class Insurance extends StatefulWidget {
  const Insurance({super.key});

  @override
  State<Insurance> createState() => _InsuranceState();
}

class _InsuranceState extends State<Insurance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xfff545454),
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        leading: Icon(Icons.arrow_back),
        title: Card(
          child: TextFormField(
            decoration: const InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  // width: 0.0 produces a thin "hairline" border
                  borderSide: const BorderSide(color: Colors.black, width: 1.0),
                ),

                prefixIcon: Icon(Icons.search_rounded),
                labelText: 'Search Insurance Provider',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue
                    )
                )

            ),
          ),
        ),
        actions: [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/acko ins.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),

                  ),
                ),
                Text("Acko - Health Insurance",
                style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/acko ins.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),

                  ),
                ),
                Text("Acko - Motor Insurance",
                  style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Aditya ins.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),

                  ),
                ),
                Text("Asitya Birla Health Insurance",
                  style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Aditya ins.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),

                  ),
                ),
                Text("Aditya Birla Sun Life Insurance",
                  style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Aegon ins.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),

                  ),
                ),
                Text("Aegon Insurance",
                  style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Ageas ins.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),

                  ),
                ),
                Text("Ageas Federal Life Insurance",
                  style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Aviva ins.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),

                  ),
                ),
                Text("Aviva Life Insurance",
                  style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Bajaj Allianz Ins.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),

                  ),
                ),
                Text("Bajaj Allianz General Insurance",
                  style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/bajaj-allianz-general-insurance.gif"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),

                  ),
                ),
                Text("Bajaj Allianz Life Insurance",
                  style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Bajaj finance ins.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),

                  ),
                ),
                Text("Bajaj Finance - Corporate agent",
                  style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/bharti ins.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),

                  ),
                ),
                Text("Bharti Axa Life Insurance",
                  style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Canara ins.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),

                  ),
                ),
                Text("Canara HSBC",
                  style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Care health.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),

                  ),
                ),
                Text("Care Health Insurance",
                  style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Cholomandalam ins.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),

                  ),
                ),
                Text("Cholamandalam MS General\n Insurance",
                  style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Digit ins.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),

                  ),
                ),
                Text("Digit Insurance",
                  style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(""),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),

                  ),
                ),
                Text("Edelweiss Insurance",
                  style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Future ins.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),

                  ),
                ),
                Text("Future generali India Insurance-\nGeneral Insurance",
                  style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Future ins.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),

                  ),
                ),
                Text("Future generali India\nLife Insurance",
                  style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
