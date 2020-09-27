import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  static const String routeName = '/settings';
  static const String pageTitle = 'Settings';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(pageTitle),
    );
  }
}
