import 'package:campaneo/data/campaign_fetch.dart';
import 'package:campaneo/pages/base_page.dart';
import 'package:campaneo/widget/campaign_details.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class CampaignHistoryPage extends BasePage {
  static const String routeName = '/history';
  static const String pageTitle = 'Campaign History';
  CampaignHistoryPage() : super(title: pageTitle);

  @override
  Widget body() {
    return Query(
        options: QueryOptions(
          documentNode: gql(CampaignFetch.fetchById),
          variables: {"id": "5cd07b18-cb84-45ba-8c3b-1335cb3ec981"},
        ),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }
          if (result.loading) {
            return Text('Loading');
          }
          //final List campaigns = (result.data['getCampaign']);
//          final List<LazyCacheMap> campaigns =
//              (result.data['getCampaign'] as List<dynamic>)
//                  .cast<LazyCacheMap>();
          return CampaignDetailsWidget(
            name: result.data['getCampaign']['name'],
            description: result.data['getCampaign']['description'],
            organizationName: (result.data['getCampaign']['organization']
                as LazyCacheMap)['name'],
            organizationCountry: (result.data['getCampaign']['organization']
                as LazyCacheMap)['country'],
          );
        });
  }
}
