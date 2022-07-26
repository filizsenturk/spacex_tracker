
import 'package:graphql/client.dart';
import 'package:graphql_flutter_bloc/graphql_flutter_bloc.dart';
import 'package:spacex_tracker/helper/api_data/graphql/graphql_api.graphql.dart';
import 'package:spacex_tracker/helper/provider/graphql_provider.dart';

late String rocketId ;

class RocketDetailInfo {
  Future<Map<String,dynamic>?>? fetchRocketInfo() async {
    QueryResult result =await client.query(
      QueryOptions(document: ROCKET_QUERY_DOCUMENT,
       variables: {
        'id': rocketId
       }
      ),
    ) ;


    if(!result.hasException){
      var myRocket =await result.data!['rocket'];
      log.i("data value is ${myRocket}");
      //Map<String,dynamic>? rocketList = Map();
      // rocketList.add(myRocket);
    //  log.i("RocketList length is ${rocketList.length}");
    //  log.i("RocketList is $rocketList ");

      return myRocket;

    }
  }
}
