import 'package:campaneo/data/campaign_fetch.dart';
import 'package:campaneo/data/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'campaign_details.dart';

class QueryableCampaignDetails extends StatelessWidget {
  final String id;

  QueryableCampaignDetails({@required this.id});

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        documentNode: gql(CampaignFetch.fetchById),
        variables: {"id": id},
      ),
      builder: (QueryResult result,
          {VoidCallback refetch, FetchMore fetchMore}) {
        if (result.hasException) {
          return Text(result.exception.toString());
        }
        if (result.loading) {
          return Text('Loading');
        }
        final data = result.data['getCampaign2'];
        final campaignDetails = Campaign.fromLazyCacheMap(data);
        return CampaignDetailsWidget(
          campaign: campaignDetails,
        );
      },
    );
  }
}
