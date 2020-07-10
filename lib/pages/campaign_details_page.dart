import 'package:campaneo/data/campaign_fetch.dart';
import 'package:campaneo/widget/campaign_details.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../constants.dart';

class CampaignDetailsPage extends StatefulWidget {
  final String campaignId;

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
      return Query(
          options: QueryOptions(
            documentNode: gql(CampaignFetch.fetchById),
            variables: {"id": widget.campaignId},
          ),
          builder: (QueryResult result,
              {VoidCallback refetch, FetchMore fetchMore}) {
            if (result.hasException) {
              return Text(result.exception.toString());
            }
            if (result.loading) {
              return Text('Loading');
            }
            final campaign = result.data['getCampaign2'];
            return Scaffold(
              backgroundColor: kBackgroundColorDark,
              appBar: AppBar(
                backgroundColor: kBackgroundColorDark,
              ),
              body: CampaignDetailsWidget(
                name: campaign['name'],
                description: campaign['description'],
                organizationName:
                    (campaign['organization'] as LazyCacheMap)['name'],
                organizationCountry:
                    (campaign['organization'] as LazyCacheMap)['country'],
              ),
            );
          });
    }
  }
}
