import 'package:campaneo/pages/AboutPage.dart';
import 'package:campaneo/pages/active_campaings_page.dart';
import 'package:campaneo/pages/campaign_history_page.dart';
import 'package:campaneo/pages/vehicle_information_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: ActiveCampaignsPage(),
      routes: {
        CampaignHistoryPage.routeName: (BuildContext context) =>
            CampaignHistoryPage(),
        VehicleInformationPage.routeName: (BuildContext context) =>
            VehicleInformationPage(),
        AboutPage.routeName: (BuildContext context) => AboutPage(),
      },
    ),
  );
}
