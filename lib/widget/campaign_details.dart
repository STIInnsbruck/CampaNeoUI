import 'package:campaneo/data/models.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'widgets.dart';

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
                Positioned(
                  bottom: 10,
                  right: 10,
                  // TODO show Join vs Leave alternative by taking into account existing data
                  child: FlatButton(
                    child: Text('Join'),
                    color: kTextIconColorDark,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () {
                      showCampaignDataDialog(context: context)
                          .then((Map<String, bool> options) {
                        if (options != null) {
                          // TODO persist data
                          options.entries
                              .map((e) => {print('${e.key}: ${e.value}')})
                              .toList();
                        }
                      });
                    },
                  ),
                )
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
