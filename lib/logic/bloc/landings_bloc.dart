
import 'package:graphql/client.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';


class LandingsBloc extends QueryBloc<Landings$Query > {
  LandingsBloc(
      {required GraphQLClient client, WatchQueryOptions<Landings$Query>? options})
      : super(
    client: client,
    options: options ??
        WatchQueryOptions(
          document: LANDINGS_QUERY_DOCUMENT,
          fetchPolicy: FetchPolicy.networkOnly,
        ),
  );

  @override
  Landings$Query parseData(Map<String, dynamic>? data) {
    return Landings$Query.fromJson(data!);
  }
}
