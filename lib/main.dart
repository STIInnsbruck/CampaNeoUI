import 'package:campaneo/pages/pages.dart';
import 'package:campaneo/themes/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import 'data/api.dart';

void main() => runApp(
      CampaneoApp(),
    );

class CampaneoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeManager(),
      child: Consumer<ThemeManager>(
        builder: (BuildContext context, ThemeManager themeManager, _) {
          return GraphQLProvider(
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home: BasePage(),
              routes: {
                VehicleInformationPage.routeName: (BuildContext context) =>
                    VehicleInformationPage(),
                // TODO add About page to main menu
                //AboutPage.routeName: (BuildContext context) => AboutPage(),
              },
              theme: themeManager.themeData,
              // theme: ThemeData(
              //   cardTheme: CardTheme(
              //     elevation: 8.0,
              //     color: kCardBackgroundColorDark,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(8.0),
              //     ),
              //   ),
              // ),
            ),
            client: ApiClient.initClient(),
          );
        },
      ),
    );
  }
}
