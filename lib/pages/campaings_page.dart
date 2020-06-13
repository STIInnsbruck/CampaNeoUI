import 'package:campaneo/widget/campaign_details.dart';
import 'package:campaneo/widget/campaign_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'campaign_details_page.dart';

class CampaignsPage extends StatefulWidget {
  static const String routeName = '/campaigns';
  static const String pageTitle = 'Campaigns';

  @override
  _CampaignsPageState createState() => _CampaignsPageState();
}

class _CampaignsPageState extends State<CampaignsPage> {
  int _selectedIndex = 0;
  bool _isLargeScreen = false;

  @override
  Widget build(BuildContext context) {
    _isLargeScreen = MediaQuery.of(context).size.width > 800;

    return Row(
      children: [
        Expanded(
          flex: 1,
          child: ListView.builder(
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return CampaignListItemWidget(
                name: 'Campaign Title $index',
                subtitle: 'Subtitle',
                selected: _selectedIndex == index,
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                  if (!_isLargeScreen) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CampaignDetailsPage(campaignId: _selectedIndex);
                    }));
                  }
                },
              );
            },
          ),
        ),
        _isLargeScreen
            ? Expanded(
                flex: 2,
                child: CampaignDetailsWidget(
                  name: 'Title $_selectedIndex',
                  description: 'Description',
                  organizationName: 'VW',
                  organizationCountry: 'Germany',
                ),
              )
            : Container(),
      ],
    );
  }
}
