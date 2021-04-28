import 'package:flutter/material.dart';
import 'header.dart';

void main() {
  runApp(HamburgerApp());
}

class HamburgerApp extends StatelessWidget {
  const HamburgerApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.teal, centerTitle: true),
        bottomAppBarColor: Colors.teal,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.orange,
        ),
      ),
      home: HamburgerHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HamburgerHome extends StatefulWidget {
  HamburgerHome({Key key}) : super(key: key);

  @override
  _HamburgerHomeState createState() => _HamburgerHomeState();
}

class _HamburgerHomeState extends State<HamburgerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          pinned: true,
          title: Text("Hamburger App"),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            )
          ],
        ),
        Header(),
        SliverList(
            delegate: SliverChildListDelegate([
          Text(
            "Hamburger",
            style: TextStyle(fontSize: 300),
          )
        ]))
      ]),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {},
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
        child: Container(
          color: Colors.black12,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(children: [
              Spacer(),
              IconButton(
                icon: Icon(Icons.add_alert),
                onPressed: () {},
                color: Colors.white,
              ),
              Spacer(flex: 2),
              IconButton(
                icon: Icon(Icons.turned_in),
                onPressed: () {},
                color: Colors.white,
              ),
              Spacer(),
            ]),
          ),
        ),
      ),
    );
  }
}
