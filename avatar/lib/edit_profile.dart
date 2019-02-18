import 'package:flutter/material.dart';

class EditProfiless extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State< EditProfiless> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // background image and bottom contentss
            Column(
              children: <Widget>[
                Container(
                  height: 200.0,
                   decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/bg.jpg"),
                        fit: BoxFit.cover
                      )
                    ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: new Color(0xffFFFFFF)
                    ),
                  ),
                ),
              ],
            ),
            // Profile image
            Positioned(
              top: 150.0, // (background container size) - (circle height / 2)
              left: 50.0,
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
            Positioned(
              top: 213.0,
              left: 120.0,
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: new Color(0xff3EB3D0),
                  border: Border.all(
                    color: new Color(0xffFFFFFF),
                    width: 3.5,
                  )
                ), 
                child: IconButton(
                  icon: Icon(Icons.edit,),
                  onPressed: (){

                  },
                  color: new Color(0xffFFFFFF),
                  iconSize: 15.0,
                )
              ),    
            ),
            Positioned(
              top: 50.0,
              right: 20.0,
              child: Container(
                height: 35.0,
                width: 35.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: new Color(0xff3EB3D0),
                ), 
                child: IconButton(
                  icon: Icon(Icons.edit,),
                  onPressed: () => _scaffoldKey.currentState.openEndDrawer(),
                  color: new Color(0xffFFFFFF),
                  iconSize: 20.0,
                  alignment: Alignment.center,
                )
              ),    
            ),
          
            Positioned(
              // top: 500.0,
              child: Container(
                    padding: EdgeInsets.only(right: 40.0,left: 40.0),
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: new Color(0xff707070)
                        ),
                        enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: new Color(0xff707070)),     
                        ),    
                      ),
                    ),
                  ),
            ),
            Container(
                    padding: EdgeInsets.only(top:110, right: 40.0,left: 40.0),
                    alignment: Alignment.centerLeft,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: new Color(0xff707070)
                        ),
                        enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: new Color(0xff707070)),     
                        ),    
                      ),
                    ),
                  ),
            new Container(
              padding: new EdgeInsets.only(top: 650.0),
              alignment: Alignment.center,
              child: Material(
                borderRadius: new BorderRadius.circular(30.0),
                color: new Color(0xff36A5C1),
                shadowColor: Colors.lightBlueAccent.shade200,
                elevation: 5.0,
                child: MaterialButton(
                  minWidth: 300.0,
                  height: 55.0,
                  onPressed: (){
                    Navigator.of(context).pushReplacementNamed('/NavAvatar');
                  },
                  child: Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 17.0,
                    ),        
                  ),
                ),
              ),
            ),
            
          ],
        ),
    );
  }
}