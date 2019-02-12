import 'package:flutter/material.dart';
import 'package:avatar/pages/menu_page.dart';
import 'package:avatar/pages/timeline_page.dart';
import 'package:avatar/pages/map_page.dart';
import 'package:avatar/pages/cart_page.dart';
import 'package:avatar/pages/profile_page.dart';
// import 'package:flutter/services.dart';
// import 'package:';


class NavAvatar extends StatefulWidget {
  @override
  _NavAvatarState createState() => _NavAvatarState();
}

class _NavAvatarState extends State<NavAvatar> {
  int _currentIndex = 0;
  List <Widget> list = List();

  @override
    void initState() {
      list..add(MenuPage())..add(TimeLinePage())..add(MapPage())..add(CartPage())..add(ProfilePage());
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: list[_currentIndex],
     bottomNavigationBar: new Theme(
       data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        // canvasColor: Colors.green,
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: new Color(0xff36A5C1),
        textTheme: Theme
            .of(context)
            .textTheme
            .copyWith(caption: new TextStyle(color: new Color(0xff5E5F5F))
        )
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            title: Text('')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note, ),
            title: Text('')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pin_drop,),
            title: Text('')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store,),
            title: Text('')
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, ),
            title: Text('')
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
                      _currentIndex = index;
                    });
        }, 
      ),
     ),
      // bottomNavigationBar: BottomAppBar(
      //   child: new Row(
      //     mainAxisSize: MainAxisSize.min,
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: <Widget>[
      //       IconButton(icon: Icon(Icons.home), onPressed: () {},),
      //       IconButton(icon: Icon(Icons.event_note), onPressed: () {},),
      //       IconButton(icon: Icon(Icons.pin_drop), onPressed: () {},),
      //       IconButton(icon: Icon(Icons.local_grocery_store), onPressed: () {},),
      //       IconButton(icon: Icon(Icons.person), onPressed: () {},),
      //     ],
      //   ),
        
      // ),
    );
  }
}