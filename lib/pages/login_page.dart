import 'package:catalog/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name ="";
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/images/login.png",height: 200,),
              Text(
                "Welcome "+ name,
                style: GoogleFonts.oswald(fontSize: 20,color: Colors.blue[400]),
                textScaleFactor: 2,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value){
                        setState(() {
                          name=value;
                        });
                      },
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
              InkWell(
                onTap: () async{
                  setState(() {
                    clicked=true;
                  });
                  await Future.delayed(Duration(seconds: 1), (){
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                    setState(() {
                      clicked=false;
                    });
                  });
                },
                child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                  child: clicked? Icon(Icons.done,color: Colors.white,):Text("Login",style: TextStyle(color: Colors.white),),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue[400],
                    borderRadius: BorderRadius.circular(clicked?50:10),
                  ),
                  height: 50,
                  width: clicked?50:150,
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
