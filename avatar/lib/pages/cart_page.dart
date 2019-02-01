import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:carousel_pro/carousel_pro.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(3, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(4, 1),
];


List<Widget> _tiles = const <Widget>[
  const _ImageTile('https://picsum.photos/200/300/?random'),
  const _ImageTile('https://picsum.photos/201/300/?random'),
  const _ImageTile('https://picsum.photos/202/300/?random'),
  const _ImageTile('https://picsum.photos/203/300/?random'),
  const _ImageTile('https://picsum.photos/204/300/?random'),
  const _ImageTile('https://picsum.photos/205/300/?random'),
  const _ImageTile('https://picsum.photos/206/300/?random'),
  const _ImageTile('https://picsum.photos/207/300/?random'),
  const _ImageTile('https://picsum.photos/208/300/?random'),
  const _ImageTile('https://picsum.photos/209/300/?random'),
];


class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              ImageCarousel(),
              Container(
                margin: new EdgeInsets.only(top: 10.0),
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
            margin: new EdgeInsets.only(top: 280.0),
            child: MetroGrid(),
          )
        ],
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
          crossAxisCount: 4,
          staggeredTiles: _staggeredTiles,
          children: _tiles,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        )
    );
  }
}

class _ImageTile extends StatelessWidget {
  const _ImageTile(this.gridImage);

  final gridImage;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: const Color(0x00000000),
      elevation: 3.0,
      child: new GestureDetector(
        onTap: () {
          print("hello");
        },
        child: new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new NetworkImage(gridImage),
                fit: BoxFit.cover,
              ),
              borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
            )
        ),
      ),
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
      )
    );
  }
}