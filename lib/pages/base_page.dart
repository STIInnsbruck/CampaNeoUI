import 'package:campaneo/widget/drawer.dart';
import 'package:flutter/material.dart';

abstract class BasePage extends StatelessWidget {
  BasePage({this.title}) : super();

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blueGrey[900],
      ),
      drawer: AppDrawer(),
      body: body(),
    );
  }

  Widget body();
}
