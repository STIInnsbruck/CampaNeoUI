import 'package:campaneo/pages/AboutPage.dart';
import 'package:campaneo/pages/active_campaings_page.dart';
import 'package:campaneo/pages/campaign_history_page.dart';
import 'package:campaneo/pages/vehicle_information_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createMenuItem(
              icon: Icons.widgets,
              title: ActiveCampaignsPage.pageTitle,
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    // TODO I guess this can be done nicer
                    MaterialPageRoute(
                        builder: (context) => context
                            .findAncestorWidgetOfExactType<MaterialApp>()
                            .home));
              }),
          _createMenuItem(
            icon: Icons.history,
            title: CampaignHistoryPage.pageTitle,
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, CampaignHistoryPage.routeName);
            },
          ),
          _createMenuItem(
            icon: Icons.directions_car,
            title: VehicleInformationPage.pageTitle,
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, VehicleInformationPage.routeName);
            },
          ),
          _createMenuItem(
            icon: Icons.info,
            title: AboutPage.pageTitle,
            onTap: () {
              Navigator.pushReplacementNamed(context, AboutPage.routeName);
            },
          ),
        ],
      ),
    );
  }

  Widget _createMenuItem(
      {IconData icon, String title, GestureTapCallback onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}
