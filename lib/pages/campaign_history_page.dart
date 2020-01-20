import 'package:campaneo/pages/base_page.dart';
import 'package:flutter/material.dart';

class CampaignHistoryPage extends BasePage {
  static const String routeName = '/history';
  static const String pageTitle = 'Campaign History';
  CampaignHistoryPage() : super(title: pageTitle);

  @override
  Widget body() {
    return Center(
      child: Text(title),
    );
  }
}
