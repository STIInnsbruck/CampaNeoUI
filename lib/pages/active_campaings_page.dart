import 'package:campaneo/pages/base_page.dart';
import 'package:campaneo/widget/campaign_details.dart';
import 'package:campaneo/widget/campaign_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ActiveCampaignsPage extends BasePage {
  static const String pageTitle = 'Active Campaigns';
  ActiveCampaignsPage() : super(title: pageTitle);

  @override
  Widget body() {
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
