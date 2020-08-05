import 'package:campaneo/data/models.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CampaignDetailsWidget extends StatelessWidget {
  final Campaign campaign;

  CampaignDetailsWidget({@required this.campaign});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kCardBackgroundColorDark,
      margin: EdgeInsets.only(left: 10.0, right: 20.0, top: 10.0, bottom: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Ink.image(
                    image: AssetImage(
                      'images/campaign-back.png',
                    ),
                    //TODO image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                    child: null,
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
                    campaign.name,
                    style: kCampaignTitleTextStyle,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              campaign.organization.name,
              style: kCardTitleTextStyleDark,
            ),
          ),
          ListTile(
            title: Text(
              campaign.organization.address.getPrintableAddress(),
              style: kCardTitleTextStyleDark,
            ),
            leading: Icon(
              Icons.home,
              color: kTextIconColorDark,
            ),
          ),
          ListTile(
            title: Text(
              campaign.organization.phone,
              style: kCardTitleTextStyleDark,
            ),
            leading: Icon(
              Icons.phone,
              color: kTextIconColorDark,
            ),
          ),
          ListTile(
            title: Text(
              campaign.organization.email,
              style: kCardTitleTextStyleDark,
            ),
            leading: Icon(
              Icons.email,
              color: kTextIconColorDark,
            ),
          ),
          ListTile(
            title: Text(
              campaign.description,
              style: kCardTitleTextStyleDark,
            ),
            leading: Icon(
              Icons.announcement,
              color: kTextIconColorDark,
            ),
          ),
        ],
      ),
    );
  }
}
