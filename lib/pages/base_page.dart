import 'package:campaneo/constants.dart';
import 'package:campaneo/widget/drawer.dart';
import 'package:flutter/material.dart';

abstract class BasePage extends StatelessWidget {
  BasePage({this.title}) : super();

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColorDark,
      appBar: AppBar(
        title: Text(title),
        backgroundColor: kBackgroundColorDark,
      ),
      drawer: AppDrawer(),
      body: body(),
    );
  }

  Widget body();
}
