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

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formkey.currentState!.validate()) {
      setState(() {
        clicked = true;
      });
      await Future.delayed(Duration(seconds: 1), () async {
        await Navigator.pushNamed(context, MyRoutes.homeRoute);
        setState(() {
          clicked = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
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
                      validator: (value){
                        if(value!.isEmpty)
                          {
                            return "User Name cannot be empty";
                          }
                        return null;
                      },
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      obscureText: true,
                      validator: (value){
                        if(value!.isEmpty)
                          {
                            return "Password cannot be empty";
                          }
                        else if(value!.length<6)
                          {
                            return "Password length should be minimum 6";
                          }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password"
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Material(
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(clicked?50:10),
                child: InkWell(
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                    child: clicked? Icon(Icons.done,color: Colors.white,):Text("Login",style: TextStyle(color: Colors.white),),
                    alignment: Alignment.center,
                    height: 50,
                    width: clicked?50:150,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
