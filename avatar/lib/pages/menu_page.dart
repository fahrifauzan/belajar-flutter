import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(1, 1.5),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1.5),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1.5),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1.5),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1.5),
  const StaggeredTile.count(1, 1),
];


List<Widget> _tiles = const <Widget>[
  const _ImageTile(Colors.green, Icons.widgets),
  const _ImageTile(Colors.lightBlue, Icons.wifi),
  const _ImageTile(Colors.amber, Icons.panorama_wide_angle),
  const _ImageTile(Colors.brown, Icons.map),
  const _ImageTile(Colors.deepOrange, Icons.send),
  const _ImageTile(Colors.indigo, Icons.airline_seat_flat),
  const _ImageTile(Colors.red, Icons.bluetooth),
  const _ImageTile(Colors.pink, Icons.battery_alert),
  const _ImageTile(Colors.purple, Icons.desktop_windows),
  const _ImageTile(Colors.blue, Icons.radio),
];

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              ImageCarousel(),
              Container(
                margin: new EdgeInsets.only(top: 20.0),
              ),
              Row(
                children: <Widget>[
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
            ],
          ),
          new Container(
            margin: new EdgeInsets.only(top: 300.0),
            child: MetroGrid(),
          )
        ],
      )
      // body: LayoutBuilder(
      //   builder: (BuildContext context, BoxConstraints viewportConstraints) {
      //     return SingleChildScrollView(
      //       child: Container(
      //         constraints: BoxConstraints(
      //           minHeight: viewportConstraints.maxHeight,
      //         ),
              
      //       ),
      //     );
      //   },
      // )
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
          new NetworkImage('https://picsum.photos/200/300/?random'),
          new NetworkImage('https://picsum.photos/204/300/?random'),
          new NetworkImage("https://picsum.photos/206/300/?random"),
        ],
        dotColor: Colors.lightBlueAccent,
        dotSize: 3.0,
        // autoplayDuration: Duration(seconds: 10),
      )
    );
  }
}

class MetroGrid extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
        child: new StaggeredGridView.count(
          crossAxisCount: 2,
          staggeredTiles: _staggeredTiles,
          children: _tiles,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        )
    );
  }
}

class _ImageTile extends StatelessWidget {
  const _ImageTile(this.backgroundColor, this.iconData);

  final Color backgroundColor;
  final IconData iconData;
  // final gridImage;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {},
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}



















                  // ImageCarousel(),
                  // // Example01(),
                  // Padding(
                  //   padding: EdgeInsets.only(top: 10.0),
                  // ),
                  // Row(
                  //   children: <Widget>[
                  //     Padding(
                  //       padding: EdgeInsets.only(left: 10.0),
                  //     ),
                  //     Icon(
                  //       Icons.home, 
                  //       color: new Color(0xff5E5F5F)
                  //     ),
                  //     Text(
                  //       "MENU", 
                  //       style: TextStyle(
                  //         color: new Color(0xff36A5C1),
                  //         fontSize: 12.0,
                  //         letterSpacing: 0.0,
                  //         fontWeight: FontWeight.bold
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(top: 10.0),
                  // ),
                  // Example01(),