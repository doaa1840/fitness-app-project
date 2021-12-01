import 'package:flutter/material.dart';
import 'package:onboarding_screen/login.dart';
import 'package:onboarding_screen/page/home_page.dart';
import 'package:onboarding_screen/recep_and_ctego/Home_REC.dart';
import 'package:onboarding_screen/scroll.dart';
import 'package:onboarding_screen/signup.dart';
import 'package:onboarding_screen/slide.dart';

class Profile extends StatelessWidget {
  var Name = check;

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
          "Fittnes First",
          style: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 0.0,
        backgroundColor: Colors.green,
        actions: <Widget>[],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: InkWell(
                onTap: () {},
                child: Text("Profile"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.food_bank),
              title: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => home_cate()));
                },
                child: Text("Meals"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.run_circle),
              title: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text("Exercises"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.pages),
              title: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginPage()));
                },
                child: Text("Login Page"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.pages),
              title: InkWell(
                onTap: () {},
                child: Text("Contact Us"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupPage()));
                },
                child: Text("Signup Page"),
              ),
            ),
            SizedBox(
              height: 270,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text("Loging Out"),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
              height: 800,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text("$dateToday",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Hello,$Name",
                        style: TextStyle(fontSize: 30, color: Colors.green),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/resources/mm.jpg',
                          height: 128,
                        ),
                        Text(
                          "Meal For Today",
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/resources/tt.jpg',
                          height: 128,
                        ),
                        Text(
                          " Exercise For Today",
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [],
                    // mainAxisSize: MainAxisSize.max,
                  )
                ],
              )),
        ],
      ),
      bottomNavigationBar: Container(
        // color: Colors.grey[300],
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.food_bank_sharp,
              color: Colors.green,
            ),
            Icon(
              Icons.notifications_none,
              color: Colors.green,
            ),
            Icon(
              Icons.person,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }

  void setState(int Function() param0) {}
}
