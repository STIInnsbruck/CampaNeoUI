import 'package:campaneo/widget/campaign_details.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CampaignDetailsPage extends StatefulWidget {
  final int campaignId;

  CampaignDetailsPage({@required this.campaignId});

  @override
  _CampaignDetailsPageState createState() => _CampaignDetailsPageState();
}

class _CampaignDetailsPageState extends State<CampaignDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColorDark,
      appBar: AppBar(
        backgroundColor: kBackgroundColorDark,
      ),
      body: CampaignDetailsWidget(
        name: 'Title ${widget.campaignId}',
        description: 'Description',
        organizationName: 'VW',
        organizationCountry: 'Germany',
      ),
    );
  }
}
