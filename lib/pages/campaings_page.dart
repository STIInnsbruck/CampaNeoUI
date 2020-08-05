import 'package:campaneo/constants.dart';
import 'package:campaneo/data/campaign_fetch.dart';
import 'package:campaneo/data/models.dart';
import 'package:campaneo/widget/campaign_list_item.dart';
import 'package:campaneo/widget/queryable_campaign_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

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
    _isLargeScreen = MediaQuery.of(context).size.width > kScreenWidthBreakPoint;

    return Query(
      options: QueryOptions(
        documentNode: gql(CampaignFetch.fetchAll),
      ),
      builder: (QueryResult result,
          {VoidCallback refetch, FetchMore fetchMore}) {
        if (result.hasException) {
          return Text(result.exception.toString());
        }
        if (result.loading) {
          return Text('Loading');
        }

        List campaigns = result.data['getCreatedCampaigns2'];
        return campaigns.isNotEmpty
            ? Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                      itemCount: campaigns.length,
                      itemBuilder: (BuildContext context, int index) {
                        final campaign =
                            Campaign.fromLazyCacheMap(campaigns[index]);
                        return CampaignListItemWidget(
                          campaign: campaign,
                          //subtitle: 'Subtitle',
                          selected: _selectedIndex == index,
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                            });
                            if (!_isLargeScreen) {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return CampaignDetailsPage(
                                    campaignId: campaign.id);
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
                          child: QueryableCampaignDetails(
                            id: Campaign.fromLazyCacheMap(
                                    campaigns[_selectedIndex])
                                .id,
                          ),
                        )
                      : Container(),
                ],
              )
            : Container(); // TODO show empty content if no data is coming back
      },
    );
  }
}
