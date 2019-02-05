import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[

            // background image and bottom contents
            Column(
              children: <Widget>[
                Container(
                  height: 200.0,
                  color: new Color(0xff3EB3D0),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/bg.jpg"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
              ],
            ),

            // Profile image
            Positioned(
              top: 150.0, // (background container size) - (circle height / 2)
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: new Color(0xff8E8E8E),
                  border: Border.all(
                    color: new Color(0xff3EB3D0),
                    width: 6.0
                  )
                ),
                child: Icon(
                  Icons.person,
                  color: new Color(0xffFFFFFF),
                  size: 80.0
                ), 
              ),
            ),

            Container(
              alignment: Alignment.centerLeft,
              margin: new EdgeInsets.only(top: 100.0, left: 40.0),
              child: new Text(
                "Hello",
                style: TextStyle(
                  color: new Color(0xffFFFFFF),
                  fontSize: 53.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            Container(
              alignment: Alignment.centerLeft,
              margin: new EdgeInsets.only(top: 200.0, left: 40.0),
              child: new Text(
                "Fahri Fauzan",
                style: TextStyle(
                  color: new Color(0xffFFFFFF),
                  fontSize: 53.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            Container(
              alignment: Alignment.centerLeft,
              margin: new EdgeInsets.only(top: 355.0, left: 43.0),
              child: new Text(
                "Have a\nNice Adventure !",
                style: TextStyle(
                  color: new Color(0xffFFFFFF),
                  fontSize: 27.0,
                  letterSpacing: 2.0,
                ),
              ),
            ),

            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  margin: new EdgeInsets.only(top: 540.0, left: 43.0),
                  child: new Icon(
                    Icons.cloud, 
                    color: new Color(0xffFFFFFF),
                    size: 80.0
                  ),
                ),
                
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: new EdgeInsets.only(top: 642.0, left: 30.0),
                      child: new Text(
                        "29 C",
                        style: TextStyle(
                          color: new Color(0xffF2F2F2),
                          fontSize: 27.0,
                        ),
                      ),
                    ),

                    Container(
                      alignment: Alignment.centerLeft,
                      margin: new EdgeInsets.only(top: 0.0, left: 30.0),
                      child: new Text(
                        "Dzuhur",
                        style: TextStyle(
                          color: new Color(0xffF2F2F2),
                          fontSize: 13.0,
                          letterSpacing: 2.5,
                        ),
                      ),
                    ),

                    Container(
                      alignment: Alignment.centerLeft,
                      margin: new EdgeInsets.only(top: 0.0, left: 30.0),
                      child: new Text(
                        "11.51 WIB",
                        style: TextStyle(
                          color: new Color(0xffF2F2F2),
                          fontSize: 13.0,
                          letterSpacing: 0.0,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
    );
  }
}