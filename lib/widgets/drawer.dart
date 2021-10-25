import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.purple[800]),
                  accountEmail: Text("tejasparse1@gmail.com"),
                  accountName: Text("Tejas Parse",),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/login.png"),
                  ),

                ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text("Home",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white),
              title: Text("My Profile",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail_solid,color: Colors.white),
              title: Text("Mail Me",style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
