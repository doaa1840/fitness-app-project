import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:onboarding_screen/information.dart';
import 'package:onboarding_screen/login.dart';
import 'package:onboarding_screen/main_page.dart';
import 'package:http/http.dart' as http;
//import 'model/home_page.dart';
import 'package:onboarding_screen/page/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return test();
  }
}

class test extends State<SignupPage> {
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  var user_name = "";
  var email = "";
  var password = "";
  var confirm_password = "";
  var json_response = null;

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            brightness: Brightness.light,
            backgroundColor: Colors.white10,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
          body: Form(
            key: formstate,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                height: MediaQuery.of(context).size.height - 50,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 100),
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("lib/resources/signup.png"),
                                fit: BoxFit.fitHeight),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        TextFormField(
                          onSaved: (text) {
                            user_name = text!;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: "username",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1)),
                          ),
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          onSaved: (text) {
                            email = text!;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: "Email",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1)),
                          ),
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          onSaved: (text) {
                            password = text!;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            hintText: "password",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1)),
                          ),
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          onSaved: (text) {
                            confirm_password = text!;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            hintText: "Confirm password",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1)),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 3, left: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          )),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () async {
                          var formdata = formstate.currentState;
                          formdata!.save();
                          var s = Uri.parse("$ip/searchUser/$user_name");
                          http.Response response1 = await http.get(s);
                          json_response = jsonDecode(response1.body);
                          if (json_response.isEmpty) {
                            if (confirm_password == password) {
                              var w = Uri.parse(
                                  "$ip/create-user/$user_name/$email/$password");
                              http.post(w);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            } else {
                              await showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text("wrong confirmation"),
                                  content: Text("confirm the password again"),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("OK"),
                                    ),
                                  ],
                                ),
                              );
                            }
                          } else {
                            showAlertDialog(context);
                          }
                        },
                        color: Color(0xff689f38),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Already have an account?"),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => loginPage()));
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.green),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )));
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = ElevatedButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Wrong SIGN UP"),
    content: Text("The username is Used/Try another"),
    actions: [
      okButton,
    ],
  );

// show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
