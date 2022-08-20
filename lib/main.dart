import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:spacex_tracker/generated/l10n.dart';
import 'package:spacex_tracker/helper/api_data/urls.dart';
import 'package:spacex_tracker/helper/provider/graphql_provider.dart';
import 'package:spacex_tracker/logic/cubit/bottom_nav_index_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/history_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/history_selected_cubit.dart';
import 'package:spacex_tracker/logic/cubit/home_cubit.dart';
import 'package:spacex_tracker/logic/cubit/imglist_cubit.dart';
import 'package:spacex_tracker/logic/cubit/mission_description_index.dart';
import 'package:spacex_tracker/logic/cubit/mission_id_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/launch_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/launch_selected_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/mission_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/mission_selected_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/rocket_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/rocket_selected_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/ship_cubit.dart';
import 'package:spacex_tracker/logic/cubit/new_cubits/ship_selected_cubit.dart';
import 'package:spacex_tracker/logic/cubit/video_ids_cubit.dart';
import 'package:spacex_tracker/logic/cubit/video_url_cubit.dart';
import 'package:spacex_tracker/screens/home_screen.dart';


GraphQLCache cache = GraphQLCache();

 main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
        BlocProvider(create: (context) => BottomNavIndexCubit(),),
      BlocProvider(create: (context)=>MissionCubit()),
      BlocProvider(create: (context)=>MissionDescriptionIndexCubit()),
      BlocProvider(create: (context)=>MissionIdCubit()),
      BlocProvider(create: (context)=>ShipSelectedCubit(),),
      BlocProvider(create: (context)=>HomeCubit()),
      BlocProvider(create: (context)=>ImgListCubit()),
      BlocProvider(create: (context)=>VideoIdsCubit()),
      BlocProvider(create: (context)=>HistoryCubit()),
      BlocProvider(create: (context)=>HistorySelectedCubit()),
      BlocProvider(create: (context)=>RocketCubit()),
      BlocProvider(create: (context)=>RocketSelectedCubit()),
      BlocProvider(create: (context)=>LaunchCubit()),
      BlocProvider(create: (context)=>LaunchSelectedCubit()),
      BlocProvider(create: (context)=>MissionSelectedCubit()),
      BlocProvider(create: (context)=>ShipCubit()),
      BlocProvider(create: (context)=>ShipSelectedCubit()),
      BlocProvider(create: (context)=>VideoUrlCubit())
    ],
      child: Sizer(
        builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
          return GraphqlProvider(
            uri: API_URL,
            child: const AnnotatedRegion<SystemUiOverlayStyle>(
              value:  SystemUiOverlayStyle.dark,
              child:  MaterialApp(
                debugShowCheckedModeBanner: false,
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
            ),
          );
        },
      ),
    );

  }
}
