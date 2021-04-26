import 'package:flutter/material.dart';

void main() {
  runApp(HamburgerApp());
}

class HamburgerApp extends StatelessWidget {
  const HamburgerApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    return Scaffold();
  }
}
