
import 'package:flutter/material.dart';
import 'package:tospay/tospay/changePassword.dart';
import 'package:tospay/tospay/changePin.dart';
import 'package:tospay/tospay/profile.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 400,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xfff545454), Colors.black],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Material(
        color: Colors.transparent,
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                
              },
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.lightBlue,
                    backgroundImage: AssetImage(
                        "assets/logo.jpeg"),
                  ),
                  decoration: BoxDecoration(color: Colors.blueAccent),
                  accountName: Text("Tospay"),
                  accountEmail: Text("support@topay.in")),
            ),
            InkWell(
                // onTap:() { Navigator.push(context,MaterialPageRoute(builder: (context)=>Profile(),),);},
                child: MenuList(title: "Profile", iconName: Icons.person_pin)),
            MenuList(iconName: Icons.password_sharp, title: "Change PassWord"),
            MenuList(iconName: Icons.pin, title: "Change Pin"),
            MenuList(iconName: Icons.lock, title: "Privacy Policy"),
            MenuList(iconName: Icons.note_alt, title: "Terms & Condition"),
            MenuList(iconName: Icons.logout, title: "Log Out"),

          ],
        ),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  final String title;
  final IconData iconName;
  MenuList({
    Key? key,
    required this.title,
    required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
         Navigator.push(context,MaterialPageRoute(builder: (context)=>Profile(),),);
        // Navigator.push(context,MaterialPageRoute(builder: (context)=>ChangePassword(),),);
        // Navigator.push(context,MaterialPageRoute(builder: (context)=>ChangePin(),),);
      },
      leading: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white24, borderRadius: BorderRadius.circular(10)),
          child: Icon(
            iconName,
            color: Colors.white,
          )),
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}