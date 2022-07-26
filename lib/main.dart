import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
import 'package:spacex_tracker/logic/cubit/theme_cubit/theme_cubit.dart';
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
  RocketDetailInfo rocketDetailInfo =RocketDetailInfo();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
        BlocProvider(
        create: (context) => BottomNavIndexCubit(),),
      BlocProvider(create: (context)=>IsDetailSelectedCubit()),
      BlocProvider(create: (context)=>SelectDetailsCubit()),
      BlocProvider(create: (context)=>RocketBloc(rocketDetailInfo: rocketDetailInfo)..add(RocketNotSelected())),
      BlocProvider(create: (context)=>ThemeCubit()),
    ],
      child: Sizer(
        builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
          return GraphqlProvider(
            uri: API_URL,
            child: AnnotatedRegion<SystemUiOverlayStyle>(
              value: (context.read<ThemeCubit>().state is LightThemeState)
                  ? SystemUiOverlayStyle.dark
                  : SystemUiOverlayStyle.light,
              child:  MaterialApp(
                theme: context.watch<ThemeCubit>().state.theme,
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
