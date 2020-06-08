import 'package:campaneo/pages/AboutPage.dart';
import 'package:campaneo/pages/active_campaings_page.dart';
import 'package:campaneo/pages/campaign_history_page.dart';
import 'package:campaneo/pages/vehicle_information_page.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'data/api.dart';

void main() => runApp(
      CampaneoApp(),
    );

class CampaneoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      child: MaterialApp(
        home: ActiveCampaignsPage(),
        routes: {
          CampaignHistoryPage.routeName: (BuildContext context) =>
              CampaignHistoryPage(),
          VehicleInformationPage.routeName: (BuildContext context) =>
              VehicleInformationPage(),
          AboutPage.routeName: (BuildContext context) => AboutPage(),
        },
      ),
      client: ApiClient.initClient(),
    );
  }
}
