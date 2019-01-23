import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                colors: [new Color(0xff0087BA), new Color(0xff61C199)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              )
            )
          ),

          Column(
            // mainAxisAlignment: MainAxisAlignment.centerLeft,
            children: <Widget>[
              Column(
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      new Container(
                        alignment: Alignment.centerLeft,
                        margin: new EdgeInsets.only(top: 100.0, left: 40.0),
                        child: new Text(
                          "Register",
                          style: TextStyle(
                            color: new Color(0xffFFFFFF),
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
                            hintText: 'Full Name',
                            hintStyle: TextStyle(
                              color: new Color(0xffFFFFFF),
                              fontStyle: FontStyle.italic
                            ),
                          ),
                        ),
                      ),
                      new Container(
                        padding: new EdgeInsets.only(right: 40.0,left: 40.0),
                        alignment: Alignment.centerLeft,
                        child: new TextField(
                          decoration: InputDecoration(
                            hintText: 'Birth Place',
                            hintStyle: TextStyle(
                              color: new Color(0xffFFFFFF),
                              fontStyle: FontStyle.italic
                            ),
                          ),
                        ),
                      ),
                      new Container(
                        padding: new EdgeInsets.only(right: 40.0,left: 40.0),
                        alignment: Alignment.centerLeft,
                        child: new TextField(
                          decoration: InputDecoration(
                            hintText: 'Birth Date',
                            hintStyle: TextStyle(
                              color: new Color(0xffFFFFFF),
                              fontStyle: FontStyle.italic
                            ),
                          ),
                        ),
                      ),
                      new Container(
                        padding: new EdgeInsets.only(right: 40.0,left: 40.0),
                        alignment: Alignment.centerLeft,
                        child: new TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: new Color(0xffFFFFFF),
                              fontStyle: FontStyle.italic
                            ),
                          ),
                        ),
                      ),
                      new Container(
                        padding: new EdgeInsets.only(right: 40.0,left: 40.0),
                        alignment: Alignment.centerLeft,
                        child: new TextField(
                          decoration: InputDecoration(
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(
                              color: new Color(0xffFFFFFF),
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
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: new Color(0xffFFFFFF),
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
                             Navigator.of(context).pushReplacementNamed('/LoginPage');
                          },
                          child: Text(
                            "Sign Up",
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
                          "Already have an account?",
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
                              "Sign In",
                              style: TextStyle(
                                color: new Color(0xffFFFFFF),
                                letterSpacing: 0.0
                              ),
                            ),
                            onPressed: (){
                              Navigator.of(context).pushReplacementNamed('/LoginPage');
                            },
                          ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}