import 'package:campaneo/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'pages.dart';

class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _selectedIndex = 0;
  Widget _selectedPage = CampaignsPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColorDark,
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: _selectedPage,
    );
  }

  Widget _buildBottomNavigationBar() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.assignment,
              ),
              title: Text(CampaignsPage.pageTitle),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_car),
              title: Text(VehicleInformationPage.pageTitle),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text(SettingsPage.pageTitle),
            ),
          ],
          elevation: 8.0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: kBackgroundColorDark,
          unselectedItemColor: kTextIconColorDark,
          selectedItemColor: kTextIconSelectedColorDark,
          unselectedIconTheme: IconThemeData(
            color: kTextIconColorDark,
            size: 40.0,
          ),
          selectedIconTheme: IconThemeData(
            color: kTextIconSelectedColorDark,
            size: 40.0,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              switch (_selectedIndex) {
                case 0:
                  _selectedPage = CampaignsPage();
                  break;
                case 1:
                  _selectedPage = VehicleInformationPage();
                  break;
                case 2:
                  _selectedPage = SettingsPage();
              }
            });
          },
        )
      ],
    );
  }
}
