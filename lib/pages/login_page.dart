import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/login.png",height: 200,),
            Text(
              "Welcome",
              style: GoogleFonts.oswald(fontSize: 20),
              textScaleFactor: 2,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "User Name"
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password"
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context,"/Home");
                },
                child: Text("Login")
            )
          ],
        )
      ),
    );
  }
}
