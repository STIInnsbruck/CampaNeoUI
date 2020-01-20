import 'package:campaneo/pages/base_page.dart';
import 'package:flutter/material.dart';

class AboutPage extends BasePage {
  static const String routeName = '/about';
  static const String pageTitle = 'About';

  AboutPage() : super(title: pageTitle);

  @override
  Widget body() {
    return Center(
      child: Text(pageTitle),
    );
  }
}
