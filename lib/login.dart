import 'package:flutter/material.dart';
import 'package:onboarding_screen/recepAndCtego/meal.dart';
import 'package:onboarding_screen/signup.dart';

class loginPage extends StatelessWidget {
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  var user_name = "";
  var password = "";
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
                        onPressed: () {
                          var formdata = formstate.currentState;
                          formdata!.save();
                          print("User Name :$user_name");
                          print("Password:$password");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
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
