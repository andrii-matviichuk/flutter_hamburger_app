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
          appBarTheme: AppBarTheme(color: Colors.teal, centerTitle: true)),
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
        Header()
      ]),
    );
  }
}
