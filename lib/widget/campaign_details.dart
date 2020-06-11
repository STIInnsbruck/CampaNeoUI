import 'package:flutter/material.dart';

import '../constants.dart';

class CampaignDetailsWidget extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl; // TODO
  final String organizationName;
  final String organizationCountry;

  CampaignDetailsWidget(
      {@required this.name,
      @required this.description,
      @required this.organizationName,
      @required this.organizationCountry,
      this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: kCardBackgroundColorDark,
        margin:
            EdgeInsets.only(left: 10.0, right: 20.0, top: 10.0, bottom: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 300,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
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
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      name,
                      style: kCampaignTitleTextStyle,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                description,
                style: kCardTitleTextStyleDark,
              ),
              leading: Icon(
                Icons.announcement,
                color: kTextIconColorDark,
              ),
            ),
            ListTile(
              title: Text(
                '$organizationName ($organizationCountry)',
                style: kCardTitleTextStyleDark,
              ),
              leading: Icon(
                Icons.contacts,
                color: kTextIconColorDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
