import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ImageCarousel(),
                  // Example01(),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                      ),
                      Icon(
                        Icons.home, 
                        color: new Color(0xff5E5F5F)
                      ),
                      Text(
                        "MENU", 
                        style: TextStyle(
                          color: new Color(0xff36A5C1),
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  // Example01(),
                ],
              ),
            ),
          );
        },
      )
    );
  }
}
class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      width: 415.0,
      child: new Carousel(
        images: [
          new NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
          new NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
          new ExactAssetImage("images/img1.jpg"),
        ],
        dotColor: Colors.lightBlueAccent,
      )
    );
  }
}
