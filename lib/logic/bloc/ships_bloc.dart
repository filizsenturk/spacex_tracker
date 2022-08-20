
import 'package:graphql/client.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';


class ShipsBloc extends QueryBloc<Ships$Query > {
  ShipsBloc(
      {required GraphQLClient client, WatchQueryOptions<Ships$Query>? options})
      : super(
    client: client,
    options: options ??
        WatchQueryOptions(
          document: SHIPS_QUERY_DOCUMENT,
          fetchPolicy: FetchPolicy.networkOnly,
        ),
  );

  @override
  Ships$Query parseData(Map<String, dynamic>? data) {
    return Ships$Query.fromJson(data!);
  }
}
