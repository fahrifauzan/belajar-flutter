import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        fit:StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: new Color(0xff0087BA),
              gradient: LinearGradient(
                colors: [new Color(0xffDADBDB), new Color(0xffFFFFFF)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              )
            )
          ),
          Column(
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Container(
                    alignment: Alignment.centerLeft,
                    margin: new EdgeInsets.only(top: 200.0, left: 40.0),
                    child: new Text(
                      "Let's go",
                      style: TextStyle(
                        color: new Color(0xff36A5C1),
                        fontSize: 38.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  new Container(
                    alignment: Alignment.centerLeft,
                    margin: new EdgeInsets.only(top: 0.0, left: 40.0),
                    child: new Text(
                      'start',
                      style: TextStyle(
                        color: new Color(0xff36A5C1),
                        fontSize: 38.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  new Container(
                    alignment: Alignment.centerLeft,
                    margin: new EdgeInsets.only(top: 0.0, left: 40.0),
                    child: new Text(
                      'the adventure',
                      style: TextStyle(
                        color: new Color(0xff5E5F5F),
                        fontSize: 38.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  new Container(
                    padding: new EdgeInsets.only(top: 60.0, right: 40.0,left: 40.0),
                    alignment: Alignment.centerLeft,
                    child: new TextField(
                      decoration: InputDecoration(
                        hintText: 'please input email',
                        hintStyle: TextStyle(
                          fontStyle: FontStyle.italic
                        ),
                      ),
                    ),
                  ),
                   new Container(
                    padding: new EdgeInsets.only(right: 40.0,left: 40.0),
                    alignment: Alignment.centerLeft,
                    child: new TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'please input password',
                        hintStyle: TextStyle(
                          fontStyle: FontStyle.italic
                        ),
                      ),
                    ),
                  ),
                  new Container(
                    padding: new EdgeInsets.only(top: 60.0, right: 40.0,left: 40.0),
                    alignment: Alignment.centerLeft,
                      child: Material(
                        borderRadius: new BorderRadius.circular(30.0),
                        color: new Color(0xff36A5C1),
                        shadowColor: Colors.lightBlueAccent.shade200,
                        elevation: 5.0,
                        child: MaterialButton(
                          minWidth: 400.0,
                          height: 42.0,
                          onPressed: (){
                            Navigator.of(context).pushReplacementNamed('/HomePage');
                          },
                          child: Text(
                            "Log In",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),        
                          ),
                        ),
                      ),
                  ),
                ],
              ),
              new Row(
                children: <Widget>[
                  new Container(
                    padding: new EdgeInsets.only(left: 70.0, top: 10.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You don't have an account?",
                      style: TextStyle(
                        letterSpacing: 0.5
                      ),
                    ),
                  ),
                  new Container(
                    padding: new EdgeInsets.only(top: 10.0),
                    alignment: Alignment.centerLeft,
                      child: FlatButton(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: new Color(0xff36A5C1),
                            letterSpacing: 0.0
                          ),
                        ),
                        onPressed: (){
                          Navigator.of(context).pushReplacementNamed('/SignUp');
                        },
                      ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}