import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ApiClient {
  static final HttpLink httpLink =
      HttpLink(uri: 'http://graphql.campaneo.vwn.cloud/graphql');

  static ValueNotifier<GraphQLClient> initClient() => ValueNotifier(
        GraphQLClient(
          cache: OptimisticCache(
            dataIdFromObject: typenameDataIdFromObject,
          ),
          link: httpLink,
        ),
      );
}
