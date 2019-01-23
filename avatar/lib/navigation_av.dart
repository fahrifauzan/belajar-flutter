import 'package:flutter/material.dart';
// import 'package:belajar_flutter/pages/menu_page.dart';
// import 'package:belajar_flutter/pages/timeline_page.dart';
// import 'package:belajar_flutter/pages/map_page.dart';
// import 'package:belajar_flutter/pages/cart_page.dart';
// import 'package:belajar_flutter/pages/profile_page.dart';


class NavAvatar extends StatefulWidget {
  @override
  _NavAvatarState createState() => _NavAvatarState();
}

class _NavAvatarState extends State<NavAvatar> {
  int _currentIndex = 0;
  List <Widget> list = List();

  @override
    void initState() {
      // list..add(MenuPage())..add(TimeLinePage())..add(MapPage())..add(CartPage())..add(ProfilePage());
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: list[_currentIndex],
     bottomNavigationBar: BottomNavigationBar(
       items: [
         BottomNavigationBarItem(
           icon: Icon(Icons.home, color: new Color(0xff5E5F5F)),
           title: Text('')
          ),
         BottomNavigationBarItem(
           icon: Icon(Icons.event_note, color: new Color(0xff5E5F5F)),
           title: Text('')
          ),
         BottomNavigationBarItem(
           icon: Icon(Icons.pin_drop, color: new Color(0xff5E5F5F)),
           title: Text('')
          ),
          BottomNavigationBarItem(
           icon: Icon(Icons.local_grocery_store, color: new Color(0xff5E5F5F)),
           title: Text('')
          ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person, color: new Color(0xff5E5F5F)),
           title: Text('')
          ),
       ],
       currentIndex: _currentIndex,
       onTap: (int index) {
         setState(() {
                    _currentIndex = index;
                  });
        //  _currentIndex = index;
       },
       
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