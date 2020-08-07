import 'package:campaneo/data/models.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CampaignDetailsWidget extends StatelessWidget {
  final Campaign campaign;

  CampaignDetailsWidget({@required this.campaign});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kCardBackgroundColorDark,
      margin: EdgeInsets.only(
        left: 10.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/campaign-back.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    color: Color.fromRGBO(255, 255, 255, 0.2),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  alignment: Alignment.topCenter,
                  child: Text(
                    campaign.name,
                    style: kCampaignTitleTextStyle,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
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
          ),
        ],
      ),
    );
  }
}
