import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onboarding_screen/recep_and_ctego/meal.dart';
import 'package:onboarding_screen/signup.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'information.dart';
import 'main_page.dart';

var check = "assi2";

class loginPage extends StatelessWidget {
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  var user_name = "";
  var password = "";
  var json_response = null;
  send() async {
    var num;

    var s = Uri.parse("$ip/login/$user_name/$password");
    http.Response response1 = await http.get(s);
    json_response = jsonDecode(response1.body);
    if (json_response.isEmpty) {
      num = 1;
    } else {
      json_response = json_response[0]["password"];

      if (json_response != password) {
      } else {}
    }
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
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
          autovalidateMode: AutovalidateMode.always,

          // height: MediaQuery.of(context).size.height,
          // width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Login to your account",
                        style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      padding: EdgeInsets.only(top: 3, left: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border(
                            bottom: BorderSide(color: Colors.black87),
                            top: BorderSide(color: Colors.black87),
                            left: BorderSide(color: Colors.black87),
                            right: BorderSide(color: Colors.black87),
                          )),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () async {
                          var json_response_name;
                          var formdata = formstate.currentState;
                          formdata!.save();
                          var s = Uri.parse("$ip/login/$user_name/$password");
                          http.Response response1 = await http.get(s);
                          json_response = jsonDecode(response1.body);
                          if (json_response.isEmpty) {
                            showAlertDialog(context);
                            print("hi");
                          } else {
                            json_response_name = json_response[0]["user_name"];
                            json_response = json_response[0]["password"];
                            if (json_response != password) {
                              showAlertDialog(context);
                            } else {
                              // check = json_response_name;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Test()));
                            }
                          }
                        },
                        color: Color(0xff689f38),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have an account?"),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()));
                        },
                        child: Text(
                          "Click Here",
                          style: TextStyle(color: Colors.green),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 100),
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("lib/resources/loginn.png"),
                          fit: BoxFit.fitHeight),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ));
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
    title: Text("Wrong Login"),
    content: Text("The username Or password is wrong"),
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
