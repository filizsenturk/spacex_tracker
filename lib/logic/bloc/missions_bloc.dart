
import 'package:graphql/client.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';


class MissionsBloc extends QueryBloc<Missions$Query > {
  MissionsBloc(
      {required GraphQLClient client, WatchQueryOptions<Missions$Query>? options})
      : super(
    client: client,
    options: options ??
        WatchQueryOptions(
          document: MISSIONS_QUERY_DOCUMENT,
          fetchPolicy: FetchPolicy.networkOnly,
        ),
  );

  @override
  Missions$Query parseData(Map<String, dynamic>? data) {
    return Missions$Query.fromJson(data!);
  }
}
