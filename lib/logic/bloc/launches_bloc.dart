
import 'package:graphql/client.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';


class LaunchesBloc extends QueryBloc<Launches$Query > {
  LaunchesBloc(
      {required GraphQLClient client, WatchQueryOptions<Launches$Query>? options})
      : super(
    client: client,
    options: options ??
        WatchQueryOptions(
          document: LAUNCHES_QUERY_DOCUMENT,
          fetchPolicy: FetchPolicy.networkOnly,
        ),
  );

  @override
  Launches$Query parseData(Map<String, dynamic>? data) {
    return Launches$Query.fromJson(data!);
  }
}
