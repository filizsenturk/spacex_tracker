// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launches$Query$Launch$LaunchLinks _$Launches$Query$Launch$LaunchLinksFromJson(
        Map<String, dynamic> json) =>
    Launches$Query$Launch$LaunchLinks()
      ..articleLink = json['article_link'] as String?;

Map<String, dynamic> _$Launches$Query$Launch$LaunchLinksToJson(
        Launches$Query$Launch$LaunchLinks instance) =>
    <String, dynamic>{
      'article_link': instance.articleLink,
    };

Launches$Query$Launch$LaunchRocket$Rocket$RocketLandingLegs
    _$Launches$Query$Launch$LaunchRocket$Rocket$RocketLandingLegsFromJson(
            Map<String, dynamic> json) =>
        Launches$Query$Launch$LaunchRocket$Rocket$RocketLandingLegs()
          ..material = json['material'] as String?
          ..number = json['number'] as int?;

Map<String, dynamic>
    _$Launches$Query$Launch$LaunchRocket$Rocket$RocketLandingLegsToJson(
            Launches$Query$Launch$LaunchRocket$Rocket$RocketLandingLegs
                instance) =>
        <String, dynamic>{
          'material': instance.material,
          'number': instance.number,
        };

Launches$Query$Launch$LaunchRocket$Rocket$RocketEngines
    _$Launches$Query$Launch$LaunchRocket$Rocket$RocketEnginesFromJson(
            Map<String, dynamic> json) =>
        Launches$Query$Launch$LaunchRocket$Rocket$RocketEngines()
          ..type = json['type'] as String?;

Map<String, dynamic>
    _$Launches$Query$Launch$LaunchRocket$Rocket$RocketEnginesToJson(
            Launches$Query$Launch$LaunchRocket$Rocket$RocketEngines instance) =>
        <String, dynamic>{
          'type': instance.type,
        };

Launches$Query$Launch$LaunchRocket$Rocket$RocketFirstStage
    _$Launches$Query$Launch$LaunchRocket$Rocket$RocketFirstStageFromJson(
            Map<String, dynamic> json) =>
        Launches$Query$Launch$LaunchRocket$Rocket$RocketFirstStage()
          ..reusable = json['reusable'] as bool?;

Map<String,
    dynamic> _$Launches$Query$Launch$LaunchRocket$Rocket$RocketFirstStageToJson(
        Launches$Query$Launch$LaunchRocket$Rocket$RocketFirstStage instance) =>
    <String, dynamic>{
      'reusable': instance.reusable,
    };

Launches$Query$Launch$LaunchRocket$Rocket
    _$Launches$Query$Launch$LaunchRocket$RocketFromJson(
            Map<String, dynamic> json) =>
        Launches$Query$Launch$LaunchRocket$Rocket()
          ..active = json['active'] as bool?
          ..company = json['company'] as String?
          ..country = json['country'] as String?
          ..wikipedia = json['wikipedia'] as String?
          ..landingLegs = json['landing_legs'] == null
              ? null
              : Launches$Query$Launch$LaunchRocket$Rocket$RocketLandingLegs
                  .fromJson(json['landing_legs'] as Map<String, dynamic>)
          ..id = json['id'] as String?
          ..boosters = json['boosters'] as int?
          ..stages = json['stages'] as int?
          ..engines = json['engines'] == null
              ? null
              : Launches$Query$Launch$LaunchRocket$Rocket$RocketEngines
                  .fromJson(json['engines'] as Map<String, dynamic>)
          ..description = json['description'] as String?
          ..firstFlight = json['first_flight'] == null
              ? null
              : DateTime.parse(json['first_flight'] as String)
          ..firstStage = json['first_stage'] == null
              ? null
              : Launches$Query$Launch$LaunchRocket$Rocket$RocketFirstStage
                  .fromJson(json['first_stage'] as Map<String, dynamic>);

Map<String, dynamic> _$Launches$Query$Launch$LaunchRocket$RocketToJson(
        Launches$Query$Launch$LaunchRocket$Rocket instance) =>
    <String, dynamic>{
      'active': instance.active,
      'company': instance.company,
      'country': instance.country,
      'wikipedia': instance.wikipedia,
      'landing_legs': instance.landingLegs?.toJson(),
      'id': instance.id,
      'boosters': instance.boosters,
      'stages': instance.stages,
      'engines': instance.engines?.toJson(),
      'description': instance.description,
      'first_flight': instance.firstFlight?.toIso8601String(),
      'first_stage': instance.firstStage?.toJson(),
    };

Launches$Query$Launch$LaunchRocket _$Launches$Query$Launch$LaunchRocketFromJson(
        Map<String, dynamic> json) =>
    Launches$Query$Launch$LaunchRocket()
      ..rocketName = json['rocket_name'] as String?
      ..rocketType = json['rocket_type'] as String?
      ..rocket = json['rocket'] == null
          ? null
          : Launches$Query$Launch$LaunchRocket$Rocket.fromJson(
              json['rocket'] as Map<String, dynamic>);

Map<String, dynamic> _$Launches$Query$Launch$LaunchRocketToJson(
        Launches$Query$Launch$LaunchRocket instance) =>
    <String, dynamic>{
      'rocket_name': instance.rocketName,
      'rocket_type': instance.rocketType,
      'rocket': instance.rocket?.toJson(),
    };

Launches$Query$Launch _$Launches$Query$LaunchFromJson(
        Map<String, dynamic> json) =>
    Launches$Query$Launch()
      ..id = json['id'] as String?
      ..links = json['links'] == null
          ? null
          : Launches$Query$Launch$LaunchLinks.fromJson(
              json['links'] as Map<String, dynamic>)
      ..launchYear = json['launch_year'] as String?
      ..details = json['details'] as String?
      ..rocket = json['rocket'] == null
          ? null
          : Launches$Query$Launch$LaunchRocket.fromJson(
              json['rocket'] as Map<String, dynamic>);

Map<String, dynamic> _$Launches$Query$LaunchToJson(
        Launches$Query$Launch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'links': instance.links?.toJson(),
      'launch_year': instance.launchYear,
      'details': instance.details,
      'rocket': instance.rocket?.toJson(),
    };

Launches$Query _$Launches$QueryFromJson(Map<String, dynamic> json) =>
    Launches$Query()
      ..launches = (json['launches'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Launches$Query$Launch.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Launches$QueryToJson(Launches$Query instance) =>
    <String, dynamic>{
      'launches': instance.launches?.map((e) => e?.toJson()).toList(),
    };

Mission$Query$Mission _$Mission$Query$MissionFromJson(
        Map<String, dynamic> json) =>
    Mission$Query$Mission()
      ..name = json['name'] as String?
      ..wikipedia = json['wikipedia'] as String?
      ..website = json['website'] as String?
      ..description = json['description'] as String?
      ..manufacturers = (json['manufacturers'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList();

Map<String, dynamic> _$Mission$Query$MissionToJson(
        Mission$Query$Mission instance) =>
    <String, dynamic>{
      'name': instance.name,
      'wikipedia': instance.wikipedia,
      'website': instance.website,
      'description': instance.description,
      'manufacturers': instance.manufacturers,
    };

Mission$Query _$Mission$QueryFromJson(Map<String, dynamic> json) =>
    Mission$Query()
      ..mission = json['mission'] == null
          ? null
          : Mission$Query$Mission.fromJson(
              json['mission'] as Map<String, dynamic>);

Map<String, dynamic> _$Mission$QueryToJson(Mission$Query instance) =>
    <String, dynamic>{
      'mission': instance.mission?.toJson(),
    };

Missions$Query$Mission _$Missions$Query$MissionFromJson(
        Map<String, dynamic> json) =>
    Missions$Query$Mission()
      ..id = json['id'] as String?
      ..name = json['name'] as String?
      ..wikipedia = json['wikipedia'] as String?
      ..website = json['website'] as String?
      ..description = json['description'] as String?
      ..manufacturers = (json['manufacturers'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList();

Map<String, dynamic> _$Missions$Query$MissionToJson(
        Missions$Query$Mission instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'wikipedia': instance.wikipedia,
      'website': instance.website,
      'description': instance.description,
      'manufacturers': instance.manufacturers,
    };

Missions$Query _$Missions$QueryFromJson(Map<String, dynamic> json) =>
    Missions$Query()
      ..missions = (json['missions'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Missions$Query$Mission.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Missions$QueryToJson(Missions$Query instance) =>
    <String, dynamic>{
      'missions': instance.missions?.map((e) => e?.toJson()).toList(),
    };

History$Query$History$Launch$LaunchRocket$Rocket$RocketLandingLegs
    _$History$Query$History$Launch$LaunchRocket$Rocket$RocketLandingLegsFromJson(
            Map<String, dynamic> json) =>
        History$Query$History$Launch$LaunchRocket$Rocket$RocketLandingLegs()
          ..material = json['material'] as String?
          ..number = json['number'] as int?;

Map<String, dynamic>
    _$History$Query$History$Launch$LaunchRocket$Rocket$RocketLandingLegsToJson(
            History$Query$History$Launch$LaunchRocket$Rocket$RocketLandingLegs
                instance) =>
        <String, dynamic>{
          'material': instance.material,
          'number': instance.number,
        };

History$Query$History$Launch$LaunchRocket$Rocket$RocketEngines
    _$History$Query$History$Launch$LaunchRocket$Rocket$RocketEnginesFromJson(
            Map<String, dynamic> json) =>
        History$Query$History$Launch$LaunchRocket$Rocket$RocketEngines()
          ..number = json['number'] as int?
          ..version = json['version'] as String?;

Map<String, dynamic>
    _$History$Query$History$Launch$LaunchRocket$Rocket$RocketEnginesToJson(
            History$Query$History$Launch$LaunchRocket$Rocket$RocketEngines
                instance) =>
        <String, dynamic>{
          'number': instance.number,
          'version': instance.version,
        };

History$Query$History$Launch$LaunchRocket$Rocket
    _$History$Query$History$Launch$LaunchRocket$RocketFromJson(
            Map<String, dynamic> json) =>
        History$Query$History$Launch$LaunchRocket$Rocket()
          ..active = json['active'] as bool?
          ..name = json['name'] as String?
          ..landingLegs = json['landing_legs'] == null
              ? null
              : History$Query$History$Launch$LaunchRocket$Rocket$RocketLandingLegs
                  .fromJson(json['landing_legs'] as Map<String, dynamic>)
          ..successRatePct = json['success_rate_pct'] as int?
          ..engines = json['engines'] == null
              ? null
              : History$Query$History$Launch$LaunchRocket$Rocket$RocketEngines
                  .fromJson(json['engines'] as Map<String, dynamic>)
          ..boosters = json['boosters'] as int?
          ..costPerLaunch = json['cost_per_launch'] as int?
          ..country = json['country'] as String?;

Map<String, dynamic> _$History$Query$History$Launch$LaunchRocket$RocketToJson(
        History$Query$History$Launch$LaunchRocket$Rocket instance) =>
    <String, dynamic>{
      'active': instance.active,
      'name': instance.name,
      'landing_legs': instance.landingLegs?.toJson(),
      'success_rate_pct': instance.successRatePct,
      'engines': instance.engines?.toJson(),
      'boosters': instance.boosters,
      'cost_per_launch': instance.costPerLaunch,
      'country': instance.country,
    };

History$Query$History$Launch$LaunchRocket
    _$History$Query$History$Launch$LaunchRocketFromJson(
            Map<String, dynamic> json) =>
        History$Query$History$Launch$LaunchRocket()
          ..rocketName = json['rocket_name'] as String?
          ..rocket = json['rocket'] == null
              ? null
              : History$Query$History$Launch$LaunchRocket$Rocket.fromJson(
                  json['rocket'] as Map<String, dynamic>);

Map<String, dynamic> _$History$Query$History$Launch$LaunchRocketToJson(
        History$Query$History$Launch$LaunchRocket instance) =>
    <String, dynamic>{
      'rocket_name': instance.rocketName,
      'rocket': instance.rocket?.toJson(),
    };

History$Query$History$Launch _$History$Query$History$LaunchFromJson(
        Map<String, dynamic> json) =>
    History$Query$History$Launch()
      ..launchYear = json['launch_year'] as String?
      ..missionName = json['mission_name'] as String?
      ..isTentative = json['is_tentative'] as bool?
      ..details = json['details'] as String?
      ..launchSuccess = json['launch_success'] as bool?
      ..rocket = json['rocket'] == null
          ? null
          : History$Query$History$Launch$LaunchRocket.fromJson(
              json['rocket'] as Map<String, dynamic>);

Map<String, dynamic> _$History$Query$History$LaunchToJson(
        History$Query$History$Launch instance) =>
    <String, dynamic>{
      'launch_year': instance.launchYear,
      'mission_name': instance.missionName,
      'is_tentative': instance.isTentative,
      'details': instance.details,
      'launch_success': instance.launchSuccess,
      'rocket': instance.rocket?.toJson(),
    };

History$Query$History _$History$Query$HistoryFromJson(
        Map<String, dynamic> json) =>
    History$Query$History()
      ..title = json['title'] as String?
      ..details = json['details'] as String?
      ..flight = json['flight'] == null
          ? null
          : History$Query$History$Launch.fromJson(
              json['flight'] as Map<String, dynamic>);

Map<String, dynamic> _$History$Query$HistoryToJson(
        History$Query$History instance) =>
    <String, dynamic>{
      'title': instance.title,
      'details': instance.details,
      'flight': instance.flight?.toJson(),
    };

History$Query _$History$QueryFromJson(Map<String, dynamic> json) =>
    History$Query()
      ..history = json['history'] == null
          ? null
          : History$Query$History.fromJson(
              json['history'] as Map<String, dynamic>);

Map<String, dynamic> _$History$QueryToJson(History$Query instance) =>
    <String, dynamic>{
      'history': instance.history?.toJson(),
    };

Rockets$Query$Rocket$RocketFirstStage
    _$Rockets$Query$Rocket$RocketFirstStageFromJson(
            Map<String, dynamic> json) =>
        Rockets$Query$Rocket$RocketFirstStage()
          ..reusable = json['reusable'] as bool?
          ..engines = json['engines'] as int?;

Map<String, dynamic> _$Rockets$Query$Rocket$RocketFirstStageToJson(
        Rockets$Query$Rocket$RocketFirstStage instance) =>
    <String, dynamic>{
      'reusable': instance.reusable,
      'engines': instance.engines,
    };

Rockets$Query$Rocket$RocketLandingLegs
    _$Rockets$Query$Rocket$RocketLandingLegsFromJson(
            Map<String, dynamic> json) =>
        Rockets$Query$Rocket$RocketLandingLegs()
          ..material = json['material'] as String?
          ..number = json['number'] as int?;

Map<String, dynamic> _$Rockets$Query$Rocket$RocketLandingLegsToJson(
        Rockets$Query$Rocket$RocketLandingLegs instance) =>
    <String, dynamic>{
      'material': instance.material,
      'number': instance.number,
    };

Rockets$Query$Rocket$RocketSecondStage
    _$Rockets$Query$Rocket$RocketSecondStageFromJson(
            Map<String, dynamic> json) =>
        Rockets$Query$Rocket$RocketSecondStage()
          ..fuelAmountTons = (json['fuel_amount_tons'] as num?)?.toDouble();

Map<String, dynamic> _$Rockets$Query$Rocket$RocketSecondStageToJson(
        Rockets$Query$Rocket$RocketSecondStage instance) =>
    <String, dynamic>{
      'fuel_amount_tons': instance.fuelAmountTons,
    };

Rockets$Query$Rocket$Distance _$Rockets$Query$Rocket$DistanceFromJson(
        Map<String, dynamic> json) =>
    Rockets$Query$Rocket$Distance()
      ..meters = (json['meters'] as num?)?.toDouble()
      ..feet = (json['feet'] as num?)?.toDouble();

Map<String, dynamic> _$Rockets$Query$Rocket$DistanceToJson(
        Rockets$Query$Rocket$Distance instance) =>
    <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };

Rockets$Query$Rocket _$Rockets$Query$RocketFromJson(
        Map<String, dynamic> json) =>
    Rockets$Query$Rocket()
      ..active = json['active'] as bool?
      ..firstStage = json['first_stage'] == null
          ? null
          : Rockets$Query$Rocket$RocketFirstStage.fromJson(
              json['first_stage'] as Map<String, dynamic>)
      ..stages = json['stages'] as int?
      ..landingLegs = json['landing_legs'] == null
          ? null
          : Rockets$Query$Rocket$RocketLandingLegs.fromJson(
              json['landing_legs'] as Map<String, dynamic>)
      ..costPerLaunch = json['cost_per_launch'] as int?
      ..name = json['name'] as String?
      ..secondStage = json['second_stage'] == null
          ? null
          : Rockets$Query$Rocket$RocketSecondStage.fromJson(
              json['second_stage'] as Map<String, dynamic>)
      ..successRatePct = json['success_rate_pct'] as int?
      ..id = json['id'] as String?
      ..description = json['description'] as String?
      ..height = json['height'] == null
          ? null
          : Rockets$Query$Rocket$Distance.fromJson(
              json['height'] as Map<String, dynamic>);

Map<String, dynamic> _$Rockets$Query$RocketToJson(
        Rockets$Query$Rocket instance) =>
    <String, dynamic>{
      'active': instance.active,
      'first_stage': instance.firstStage?.toJson(),
      'stages': instance.stages,
      'landing_legs': instance.landingLegs?.toJson(),
      'cost_per_launch': instance.costPerLaunch,
      'name': instance.name,
      'second_stage': instance.secondStage?.toJson(),
      'success_rate_pct': instance.successRatePct,
      'id': instance.id,
      'description': instance.description,
      'height': instance.height?.toJson(),
    };

Rockets$Query _$Rockets$QueryFromJson(Map<String, dynamic> json) =>
    Rockets$Query()
      ..rockets = (json['rockets'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Rockets$Query$Rocket.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Rockets$QueryToJson(Rockets$Query instance) =>
    <String, dynamic>{
      'rockets': instance.rockets?.map((e) => e?.toJson()).toList(),
    };

Rocket$Query$Rocket$RocketSecondStage
    _$Rocket$Query$Rocket$RocketSecondStageFromJson(
            Map<String, dynamic> json) =>
        Rocket$Query$Rocket$RocketSecondStage()
          ..engines = json['engines'] as int?;

Map<String, dynamic> _$Rocket$Query$Rocket$RocketSecondStageToJson(
        Rocket$Query$Rocket$RocketSecondStage instance) =>
    <String, dynamic>{
      'engines': instance.engines,
    };

Rocket$Query$Rocket$RocketFirstStage
    _$Rocket$Query$Rocket$RocketFirstStageFromJson(Map<String, dynamic> json) =>
        Rocket$Query$Rocket$RocketFirstStage()
          ..reusable = json['reusable'] as bool?
          ..engines = json['engines'] as int?;

Map<String, dynamic> _$Rocket$Query$Rocket$RocketFirstStageToJson(
        Rocket$Query$Rocket$RocketFirstStage instance) =>
    <String, dynamic>{
      'reusable': instance.reusable,
      'engines': instance.engines,
    };

Rocket$Query$Rocket$RocketLandingLegs
    _$Rocket$Query$Rocket$RocketLandingLegsFromJson(
            Map<String, dynamic> json) =>
        Rocket$Query$Rocket$RocketLandingLegs()
          ..material = json['material'] as String?
          ..number = json['number'] as int?;

Map<String, dynamic> _$Rocket$Query$Rocket$RocketLandingLegsToJson(
        Rocket$Query$Rocket$RocketLandingLegs instance) =>
    <String, dynamic>{
      'material': instance.material,
      'number': instance.number,
    };

Rocket$Query$Rocket _$Rocket$Query$RocketFromJson(Map<String, dynamic> json) =>
    Rocket$Query$Rocket()
      ..active = json['active'] as bool?
      ..boosters = json['boosters'] as int?
      ..name = json['name'] as String?
      ..successRatePct = json['success_rate_pct'] as int?
      ..secondStage = json['second_stage'] == null
          ? null
          : Rocket$Query$Rocket$RocketSecondStage.fromJson(
              json['second_stage'] as Map<String, dynamic>)
      ..firstStage = json['first_stage'] == null
          ? null
          : Rocket$Query$Rocket$RocketFirstStage.fromJson(
              json['first_stage'] as Map<String, dynamic>)
      ..costPerLaunch = json['cost_per_launch'] as int?
      ..landingLegs = json['landing_legs'] == null
          ? null
          : Rocket$Query$Rocket$RocketLandingLegs.fromJson(
              json['landing_legs'] as Map<String, dynamic>)
      ..firstFlight = json['first_flight'] == null
          ? null
          : DateTime.parse(json['first_flight'] as String);

Map<String, dynamic> _$Rocket$Query$RocketToJson(
        Rocket$Query$Rocket instance) =>
    <String, dynamic>{
      'active': instance.active,
      'boosters': instance.boosters,
      'name': instance.name,
      'success_rate_pct': instance.successRatePct,
      'second_stage': instance.secondStage?.toJson(),
      'first_stage': instance.firstStage?.toJson(),
      'cost_per_launch': instance.costPerLaunch,
      'landing_legs': instance.landingLegs?.toJson(),
      'first_flight': instance.firstFlight?.toIso8601String(),
    };

Rocket$Query _$Rocket$QueryFromJson(Map<String, dynamic> json) => Rocket$Query()
  ..rocket = json['rocket'] == null
      ? null
      : Rocket$Query$Rocket.fromJson(json['rocket'] as Map<String, dynamic>);

Map<String, dynamic> _$Rocket$QueryToJson(Rocket$Query instance) =>
    <String, dynamic>{
      'rocket': instance.rocket?.toJson(),
    };

Ships$Query$Ship$ShipMission _$Ships$Query$Ship$ShipMissionFromJson(
        Map<String, dynamic> json) =>
    Ships$Query$Ship$ShipMission()
      ..name = json['name'] as String?
      ..flight = json['flight'] as String?;

Map<String, dynamic> _$Ships$Query$Ship$ShipMissionToJson(
        Ships$Query$Ship$ShipMission instance) =>
    <String, dynamic>{
      'name': instance.name,
      'flight': instance.flight,
    };

Ships$Query$Ship _$Ships$Query$ShipFromJson(Map<String, dynamic> json) =>
    Ships$Query$Ship()
      ..active = json['active'] as bool?
      ..id = json['id'] as String?
      ..image = json['image'] as String?
      ..missions = (json['missions'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Ships$Query$Ship$ShipMission.fromJson(
                  e as Map<String, dynamic>))
          .toList()
      ..successfulLandings = json['successful_landings'] as int?
      ..yearBuilt = json['year_built'] as int?
      ..attemptedLandings = json['attempted_landings'] as int?
      ..kw$class = json['class'] as int?
      ..roles =
          (json['roles'] as List<dynamic>?)?.map((e) => e as String?).toList()
      ..homePort = json['home_port'] as String?
      ..model = json['model'] as String?;

Map<String, dynamic> _$Ships$Query$ShipToJson(Ships$Query$Ship instance) =>
    <String, dynamic>{
      'active': instance.active,
      'id': instance.id,
      'image': instance.image,
      'missions': instance.missions?.map((e) => e?.toJson()).toList(),
      'successful_landings': instance.successfulLandings,
      'year_built': instance.yearBuilt,
      'attempted_landings': instance.attemptedLandings,
      'class': instance.kw$class,
      'roles': instance.roles,
      'home_port': instance.homePort,
      'model': instance.model,
    };

Ships$Query _$Ships$QueryFromJson(Map<String, dynamic> json) => Ships$Query()
  ..ships = (json['ships'] as List<dynamic>?)
      ?.map((e) => e == null
          ? null
          : Ships$Query$Ship.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$Ships$QueryToJson(Ships$Query instance) =>
    <String, dynamic>{
      'ships': instance.ships?.map((e) => e?.toJson()).toList(),
    };

Launch$Query$Launch$LaunchLinks _$Launch$Query$Launch$LaunchLinksFromJson(
        Map<String, dynamic> json) =>
    Launch$Query$Launch$LaunchLinks()
      ..flickrImages = (json['flickr_images'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList();

Map<String, dynamic> _$Launch$Query$Launch$LaunchLinksToJson(
        Launch$Query$Launch$LaunchLinks instance) =>
    <String, dynamic>{
      'flickr_images': instance.flickrImages,
    };

Launch$Query$Launch$LaunchRocket$Rocket
    _$Launch$Query$Launch$LaunchRocket$RocketFromJson(
            Map<String, dynamic> json) =>
        Launch$Query$Launch$LaunchRocket$Rocket()..id = json['id'] as String?;

Map<String, dynamic> _$Launch$Query$Launch$LaunchRocket$RocketToJson(
        Launch$Query$Launch$LaunchRocket$Rocket instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Launch$Query$Launch$LaunchRocket _$Launch$Query$Launch$LaunchRocketFromJson(
        Map<String, dynamic> json) =>
    Launch$Query$Launch$LaunchRocket()
      ..rocket = json['rocket'] == null
          ? null
          : Launch$Query$Launch$LaunchRocket$Rocket.fromJson(
              json['rocket'] as Map<String, dynamic>)
      ..rocketName = json['rocket_name'] as String?
      ..rocketType = json['rocket_type'] as String?;

Map<String, dynamic> _$Launch$Query$Launch$LaunchRocketToJson(
        Launch$Query$Launch$LaunchRocket instance) =>
    <String, dynamic>{
      'rocket': instance.rocket?.toJson(),
      'rocket_name': instance.rocketName,
      'rocket_type': instance.rocketType,
    };

Launch$Query$Launch _$Launch$Query$LaunchFromJson(Map<String, dynamic> json) =>
    Launch$Query$Launch()
      ..id = json['id'] as String?
      ..upcoming = json['upcoming'] as bool?
      ..missionId = (json['mission_id'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList()
      ..missionName = json['mission_name'] as String?
      ..links = json['links'] == null
          ? null
          : Launch$Query$Launch$LaunchLinks.fromJson(
              json['links'] as Map<String, dynamic>)
      ..launchYear = json['launch_year'] as String?
      ..rocket = json['rocket'] == null
          ? null
          : Launch$Query$Launch$LaunchRocket.fromJson(
              json['rocket'] as Map<String, dynamic>);

Map<String, dynamic> _$Launch$Query$LaunchToJson(
        Launch$Query$Launch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'upcoming': instance.upcoming,
      'mission_id': instance.missionId,
      'mission_name': instance.missionName,
      'links': instance.links?.toJson(),
      'launch_year': instance.launchYear,
      'rocket': instance.rocket?.toJson(),
    };

Launch$Query _$Launch$QueryFromJson(Map<String, dynamic> json) => Launch$Query()
  ..launch = json['launch'] == null
      ? null
      : Launch$Query$Launch.fromJson(json['launch'] as Map<String, dynamic>);

Map<String, dynamic> _$Launch$QueryToJson(Launch$Query instance) =>
    <String, dynamic>{
      'launch': instance.launch?.toJson(),
    };

Histories$Query$History$Link _$Histories$Query$History$LinkFromJson(
        Map<String, dynamic> json) =>
    Histories$Query$History$Link()..article = json['article'] as String?;

Map<String, dynamic> _$Histories$Query$History$LinkToJson(
        Histories$Query$History$Link instance) =>
    <String, dynamic>{
      'article': instance.article,
    };

Histories$Query$History$Launch$LaunchRocket
    _$Histories$Query$History$Launch$LaunchRocketFromJson(
            Map<String, dynamic> json) =>
        Histories$Query$History$Launch$LaunchRocket()
          ..rocketName = json['rocket_name'] as String?;

Map<String, dynamic> _$Histories$Query$History$Launch$LaunchRocketToJson(
        Histories$Query$History$Launch$LaunchRocket instance) =>
    <String, dynamic>{
      'rocket_name': instance.rocketName,
    };

Histories$Query$History$Launch _$Histories$Query$History$LaunchFromJson(
        Map<String, dynamic> json) =>
    Histories$Query$History$Launch()
      ..launchYear = json['launch_year'] as String?
      ..id = json['id'] as String?
      ..upcoming = json['upcoming'] as bool?
      ..missionId = (json['mission_id'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList()
      ..missionName = json['mission_name'] as String?
      ..launchSuccess = json['launch_success'] as bool?
      ..rocket = json['rocket'] == null
          ? null
          : Histories$Query$History$Launch$LaunchRocket.fromJson(
              json['rocket'] as Map<String, dynamic>);

Map<String, dynamic> _$Histories$Query$History$LaunchToJson(
        Histories$Query$History$Launch instance) =>
    <String, dynamic>{
      'launch_year': instance.launchYear,
      'id': instance.id,
      'upcoming': instance.upcoming,
      'mission_id': instance.missionId,
      'mission_name': instance.missionName,
      'launch_success': instance.launchSuccess,
      'rocket': instance.rocket?.toJson(),
    };

Histories$Query$History _$Histories$Query$HistoryFromJson(
        Map<String, dynamic> json) =>
    Histories$Query$History()
      ..id = json['id'] as String?
      ..details = json['details'] as String?
      ..title = json['title'] as String?
      ..links = json['links'] == null
          ? null
          : Histories$Query$History$Link.fromJson(
              json['links'] as Map<String, dynamic>)
      ..flight = json['flight'] == null
          ? null
          : Histories$Query$History$Launch.fromJson(
              json['flight'] as Map<String, dynamic>);

Map<String, dynamic> _$Histories$Query$HistoryToJson(
        Histories$Query$History instance) =>
    <String, dynamic>{
      'id': instance.id,
      'details': instance.details,
      'title': instance.title,
      'links': instance.links?.toJson(),
      'flight': instance.flight?.toJson(),
    };

Histories$Query _$Histories$QueryFromJson(Map<String, dynamic> json) =>
    Histories$Query()
      ..histories = (json['histories'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Histories$Query$History.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Histories$QueryToJson(Histories$Query instance) =>
    <String, dynamic>{
      'histories': instance.histories?.map((e) => e?.toJson()).toList(),
    };

Landings$Query$Launch _$Landings$Query$LaunchFromJson(
        Map<String, dynamic> json) =>
    Landings$Query$Launch()
      ..launchSuccess = json['launch_success'] as bool?
      ..details = json['details'] as String?;

Map<String, dynamic> _$Landings$Query$LaunchToJson(
        Landings$Query$Launch instance) =>
    <String, dynamic>{
      'launch_success': instance.launchSuccess,
      'details': instance.details,
    };

Landings$Query _$Landings$QueryFromJson(Map<String, dynamic> json) =>
    Landings$Query()
      ..launchNext = json['launchNext'] == null
          ? null
          : Landings$Query$Launch.fromJson(
              json['launchNext'] as Map<String, dynamic>);

Map<String, dynamic> _$Landings$QueryToJson(Landings$Query instance) =>
    <String, dynamic>{
      'launchNext': instance.launchNext?.toJson(),
    };

MissionArguments _$MissionArgumentsFromJson(Map<String, dynamic> json) =>
    MissionArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$MissionArgumentsToJson(MissionArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

HistoryArguments _$HistoryArgumentsFromJson(Map<String, dynamic> json) =>
    HistoryArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$HistoryArgumentsToJson(HistoryArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

RocketArguments _$RocketArgumentsFromJson(Map<String, dynamic> json) =>
    RocketArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$RocketArgumentsToJson(RocketArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

LaunchArguments _$LaunchArgumentsFromJson(Map<String, dynamic> json) =>
    LaunchArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$LaunchArgumentsToJson(LaunchArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
