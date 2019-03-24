import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// declare you main as void
void main() {
  // we call the runApp function
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // image carousel widget
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w1.jpg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 6.0,
      ),
    );
    // end of image carousel

    return Scaffold(
      appBar: new AppBar(
        //elevation removes shadow on appbar
        elevation: 0.0,
        backgroundColor: Color(0xFF1976D2),
        title: Text('V-APP'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),

      // drawer widget here
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header

            new UserAccountsDrawerHeader(
              accountName: Text('Richard Danquah'),
              accountEmail: Text('richpee60@yahoo.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Color(0xFF1976D2)),
            ),
            // end of header

            // body of Drawer

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),

            // Divider widget creates line between widget
            Divider(
              color: Color(0xFFBDBDBD),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Color(0xFFBBDEFB),
                ),
              ),
            ),

            // end of body of Drawer
          ],
        ),
      ),

      // end of Drawer
      // body of Scaffold widget
      body: new ListView(
        children: <Widget>[image_carousel],
      ),

      // end of body of Scaffold widget
    );
  }
}
