import 'package:flutter/material.dart';

class Boards extends StatefulWidget {
  @override
  _BoardsState createState() => _BoardsState();
}

class _BoardsState extends State<Boards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Boards"),
      ),
    );
  }
}
