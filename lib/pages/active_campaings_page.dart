import 'package:campaneo/pages/base_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ActiveCampaignsPage extends BasePage {
  static const String pageTitle = 'Active Campaigns';
  ActiveCampaignsPage() : super(title: pageTitle);

  @override
  Widget body() {
    return Center(
      child: Text(title),
    );
  }
}
