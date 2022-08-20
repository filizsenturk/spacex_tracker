
import 'package:graphql/client.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';


class HistoriesBloc extends QueryBloc<Histories$Query > {
  HistoriesBloc(
      {required GraphQLClient client, WatchQueryOptions<Histories$Query>? options})
      : super(
    client: client,
    options: options ??
        WatchQueryOptions(
          document: HISTORIES_QUERY_DOCUMENT,
          fetchPolicy: FetchPolicy.networkOnly,
        ),
  );

  @override
  Histories$Query parseData(Map<String, dynamic>? data) {
    return Histories$Query.fromJson(data!);
  }
}
