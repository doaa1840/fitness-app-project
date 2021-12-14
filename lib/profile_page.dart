import 'package:flutter/material.dart';
import 'package:onboarding_screen/information.dart';
import 'package:onboarding_screen/login.dart';

class profilepage extends StatelessWidget {
  var Name = loginPage().user_name;
  var ag = info().age;
  var hig = info().hight;
  var weig = info().weight;
  var goal = info().goal;
  var gen = info().gender;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Profile",
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    //color: Colors.green,
                    borderRadius: BorderRadius.circular(50.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        offset: Offset(3.0, 4.0),
                        color: Colors.black38,
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage("lib/resources/profile.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),

                  //child: Image.asset("lib/resources/img1.png",fit: BoxFit.cover,),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name:$Name",
                      style: TextStyle(fontSize: 22.0),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Country,Palestine",
                      style: TextStyle(fontSize: 16.0, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                          Icon(
                            Icons.add,
                            size: 40,
                            color: Colors.green,
                          ),
                        ])),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Account",
              style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
            ),
            Card(
              borderOnForeground: true,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.female,
                        color: Colors.green,
                      ),
                      title: Text("Gender:$gen"),
                      contentPadding: EdgeInsets.all(0.0),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.celebration,
                        color: Colors.green,
                      ),
                      title: Text("Age:$ag"),
                      contentPadding: EdgeInsets.all(0.0),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.label_important,
                        color: Colors.green,
                      ),
                      title: Text("Hight:$hig"),
                      contentPadding: EdgeInsets.all(0.0),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.label_important,
                        color: Colors.green,
                      ),
                      title: Text("Hight:$hig"),
                      contentPadding: EdgeInsets.all(0.0),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.run_circle_outlined,
                        color: Colors.green,
                      ),
                      title: Text("Goal:$goal"),
                      contentPadding: EdgeInsets.all(0.0),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: MaterialButton(
                onPressed: () => {},
                color: Colors.green,
                child: Text(
                  "LOGOUT",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
