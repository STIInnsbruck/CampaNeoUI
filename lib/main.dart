import 'package:campaneo/constants.dart';
import 'package:campaneo/pages/AboutPage.dart';
import 'package:campaneo/pages/base_page.dart';
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
        home: BasePage(),
        routes: {
          VehicleInformationPage.routeName: (BuildContext context) =>
              VehicleInformationPage(),
          AboutPage.routeName: (BuildContext context) => AboutPage(),
        },
        theme: ThemeData(
          cardTheme: CardTheme(
            elevation: 8.0,
            color: kCardBackgroundColorDark,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
      client: ApiClient.initClient(),
    );
  }
}
