import 'package:flutter/material.dart';

import '../constants.dart';

class CampaignWidget extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl; // TODO
  final String organizationName;
  final String organizationCountry;

  CampaignWidget(
      {@required this.name,
      @required this.description,
      @required this.organizationName,
      @required this.organizationCountry,
      this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 300,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    // In order to have the ink splash appear above the image, you
                    // must use Ink.image. This allows the image to be painted as part
                    // of the Material and display ink effects above it. Using a
                    // standard Image will obscure the ink splash.
                    child: Ink.image(
                      image: AssetImage(
                        'images/campaign-back.png',
                      ),
                      fit: BoxFit.cover,
                      child: Container(),
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      color: Color.fromRGBO(255, 255, 255, 0.2),
                    ),
                  ),
                  Positioned(
                    bottom: 16.0,
                    left: 16.0,
                    right: 16.0,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        name,
                        style: kCampaignTitleTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                description,
                style: kCampaignTextStyle,
              ),
              leading: Icon(Icons.announcement),
            ),
            ListTile(
              title: Text(
                '$organizationName ($organizationCountry)',
                style: kCampaignTextStyle,
              ),
              leading: Icon(Icons.contacts),
            ),
          ],
        ),
      ),
    );
  }
}
