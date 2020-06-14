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
  bool _isLargeScreen = false;

  @override
  Widget build(BuildContext context) {
    _isLargeScreen = MediaQuery.of(context).size.width > kScreenWidthBreakPoint;
    if (_isLargeScreen) {
      // TODO this seems to throw an exception because of some Animation gets interrupted
      Navigator.pop(context);
      return Container();
    } else {
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
}
