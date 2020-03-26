import 'package:campaneo/pages/base_page.dart';
import 'package:flutter/material.dart';

class VehicleInformationPage extends BasePage {
  static const String routeName = '/vehicle';
  static const String pageTitle = 'Vehicle Information';

  VehicleInformationPage() : super(title: pageTitle);

  @override
  Widget body() {
    return Center(
      child: Text(pageTitle),
    );
  }
}
