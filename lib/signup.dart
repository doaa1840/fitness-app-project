import 'package:flutter/material.dart';
import 'package:onboarding_screen/login.dart';

//import 'model/home_page.dart';
import 'package:onboarding_screen/page/home_page.dart';

class SignupPage extends StatelessWidget {
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  var user_name = "";
  var email = "";
  var password = "";
  var confirm_password = "";

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
                        onPressed: () {
                          var formdata = formstate.currentState;
                          formdata!.save();
                          print("User Name:$user_name");
                          print("Email:$email");
                          print("Password:$password");
                          print("Confirmed Password:$confirm_password");

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
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
