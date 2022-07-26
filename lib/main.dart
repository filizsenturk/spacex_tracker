import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/helper/api_data/urls.dart';
import 'package:spacex_tracker/helper/provider/graphql_provider.dart';
import 'package:spacex_tracker/logic/bloc/rocket_bloc/rocket_bloc.dart';
import 'package:spacex_tracker/logic/bloc/rocket_bloc/rocket_detail_info.dart';
import 'package:spacex_tracker/logic/cubit/bottom_nav_index_cubit.dart';
import 'package:spacex_tracker/logic/cubit/is_detail_selected_cubit/is_detail_selected_cubit.dart';
import 'package:spacex_tracker/logic/cubit/select_details_cubit/select_details_cubit.dart';
import 'package:spacex_tracker/screens/home_screen.dart';


GraphQLCache cache = GraphQLCache();

Future<void> main() async {
 /*final HttpLink httpLink = HttpLink(API_URL);
 ValueNotifier<GraphQLClient> client= ValueNotifier(GraphQLClient(
     link: httpLink,
     cache: GraphQLCache(store:InMemoryStore())
 ));
 // todo bu kısmı düzenle providere ayır clientı çağıramadım rocketsScreenBody de
 var app = GraphQLProvider(client: client,child: MyApp(),);
  */
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  RocketDetailInfo rocketDetailInfo =RocketDetailInfo();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
        BlocProvider(
        create: (context) => BottomNavIndexCubit(),),
      BlocProvider(create: (context)=>IsDetailSelectedCubit()),
      BlocProvider(create: (context)=>SelectDetailsCubit()),
      BlocProvider(create: (context)=>RocketBloc(rocketDetailInfo: rocketDetailInfo)..add(RocketNotSelected())),
    ],
      child: Sizer(
        builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
          return GraphqlProvider(
            uri: API_URL,
            child: const MaterialApp(
              home:  HomeScreen(),
              supportedLocales:[
                Locale("en",""),
                Locale("tr","")
              ],
              localizationsDelegates:  [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
            ),
          );
        },

      ),
    );
    /*MultiRepositoryProvider(

      providers:  [ 

      ], child: MultiBlocProvider(
      providers: [

      ], child: HomeScreen(),
    ),
    );*/
  }
}
