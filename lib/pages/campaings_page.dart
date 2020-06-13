import 'package:campaneo/widget/campaign_details.dart';
import 'package:campaneo/widget/campaign_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CampaignsPage extends StatelessWidget {
  static const String routeName = '/campaigns';
  static const String pageTitle = 'Campaigns';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: ListView.builder(
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return CampaignListItemWidget(
                name: 'Campaign Title',
                subtitle: 'Subtitle',
              );
            },
          ),
        ),
        Expanded(
          flex: 2,
          child: CampaignDetailsWidget(
            name: 'Tile',
            description: 'Description',
            organizationName: 'VW',
            organizationCountry: 'Germany',
          ),
        ),
      ],
    );
  }
}
