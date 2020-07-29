import 'package:campaneo/data/Dtos.dart';
import 'package:campaneo/data/campaign_fetch.dart';
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
        // TODO find way to do this mapping nicer in the DTO
        final data = result.data['getCampaign2'];
        final organizationData = data['organization'] as LazyCacheMap;
        final campaignDetails = Campaign(
          name: data['name'],
          description: data['description'],
          organization: Organization(
            name: organizationData['name'],
            phone: organizationData['phone_number'],
            email: organizationData['contact_email'],
            address: Address(
              street: organizationData['street'],
              number: organizationData['street_number'],
              city: organizationData['city'],
              country: organizationData['country'],
            ),
          ),
        );
        return CampaignDetailsWidget(
          campaign: campaignDetails,
        );
      },
    );
  }
}
