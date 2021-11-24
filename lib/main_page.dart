import 'package:flutter/material.dart';
import 'package:onboarding_screen/login.dart';
import 'package:onboarding_screen/signup.dart';

class Profile extends StatelessWidget {
  var Name = loginPage().user_name;

  var date = DateTime.now();

  DateTime dateToday = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
    DateTime.now().hour + 2,
    DateTime.now().minute,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "profile",
          style: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0.0,
        backgroundColor: Colors.black38,
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
      body: ListView(
        children: [
          Container(
              height: 200,
              width: double.infinity,
              color: Colors.blueGrey,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text("$dateToday",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Hello,$Name",
                        style: TextStyle(fontSize: 30, color: Colors.blue),
                      )),
                  Row(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(child: Container()),
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.only(top: 10),
                        height: 136,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.bottomLeft,
                              image: AssetImage("lib/resources/fit.jpeg"),
                              fit: BoxFit.fitHeight),
                        ),
                      )),
                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          print("");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.yellow,
                          ),
                          alignment: Alignment.bottomRight,
                          // width: 250,
                          height: 136,
                        ),
                      ))
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
