import 'package:apps/pages/homepage.dart';
import 'package:apps/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String usern = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            'Login',
            style: TextStyle(fontWeight: FontWeight.bold, fontFamily: ''),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Image.asset(
              "assets/images/Login.png",
              width: 400,
              height: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Text('Welcome Back $usern !',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.cyan,
                ),
                textAlign: TextAlign.left),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter UserName',
                      labelText: 'Username',
                    ),
                    onChanged: (value) {
                      usern = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    splashColor: Colors.red,
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });

                      await Future.delayed(Duration(seconds: 1));
                      await Navigator.pushNamed(context, MyRoutes.homeRoute);
                      setState(() {
                        changeButton = false;
                      });
                    },
                    // Idhr add krna hai vo wala part
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 9),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
        //drawer changes baaki hai
        drawer: Drawer(),
      ),
    );
  }
}
