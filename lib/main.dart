import 'package:campaneo/pages/pages.dart';
import 'package:campaneo/themes/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import 'data/api.dart';

void main() => runApp(CampaneoApp());

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
              theme: themeManager.themeData,
              routes: {
                VehicleInformationPage.routeName: (BuildContext context) =>
                    VehicleInformationPage(),
                // TODO add About page to main menu
                //AboutPage.routeName: (BuildContext context) => AboutPage(),
              },
            ),
            client: ApiClient.initClient(),
          );
        },
      ),
    );
  }
}
