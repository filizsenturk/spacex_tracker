// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Launches$Query$Launch$LaunchLinks extends JsonSerializable
    with EquatableMixin {
  Launches$Query$Launch$LaunchLinks();

  factory Launches$Query$Launch$LaunchLinks.fromJson(
          Map<String, dynamic> json) =>
      _$Launches$Query$Launch$LaunchLinksFromJson(json);

  @JsonKey(name: 'article_link')
  String? articleLink;

  @JsonKey(name: 'video_link')
  String? videoLink;

  String? wikipedia;

  @JsonKey(name: 'flickr_images')
  List<String?>? flickrImages;

  @JsonKey(name: 'reddit_launch')
  String? redditLaunch;

  @override
  List<Object?> get props =>
      [articleLink, videoLink, wikipedia, flickrImages, redditLaunch];
  @override
  Map<String, dynamic> toJson() =>
      _$Launches$Query$Launch$LaunchLinksToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Launches$Query$Launch$LaunchSite extends JsonSerializable
    with EquatableMixin {
  Launches$Query$Launch$LaunchSite();

  factory Launches$Query$Launch$LaunchSite.fromJson(
          Map<String, dynamic> json) =>
      _$Launches$Query$Launch$LaunchSiteFromJson(json);

  @JsonKey(name: 'site_name')
  String? siteName;

  @override
  List<Object?> get props => [siteName];
  @override
  Map<String, dynamic> toJson() =>
      _$Launches$Query$Launch$LaunchSiteToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Launches$Query$Launch$LaunchRocket$Rocket$RocketLandingLegs
    extends JsonSerializable with EquatableMixin {
  Launches$Query$Launch$LaunchRocket$Rocket$RocketLandingLegs();

  factory Launches$Query$Launch$LaunchRocket$Rocket$RocketLandingLegs.fromJson(
          Map<String, dynamic> json) =>
      _$Launches$Query$Launch$LaunchRocket$Rocket$RocketLandingLegsFromJson(
          json);

  String? material;

  int? number;

  @override
  List<Object?> get props => [material, number];
  @override
  Map<String, dynamic> toJson() =>
      _$Launches$Query$Launch$LaunchRocket$Rocket$RocketLandingLegsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Launches$Query$Launch$LaunchRocket$Rocket$RocketEngines
    extends JsonSerializable with EquatableMixin {
  Launches$Query$Launch$LaunchRocket$Rocket$RocketEngines();

  factory Launches$Query$Launch$LaunchRocket$Rocket$RocketEngines.fromJson(
          Map<String, dynamic> json) =>
      _$Launches$Query$Launch$LaunchRocket$Rocket$RocketEnginesFromJson(json);

  String? type;

  @override
  List<Object?> get props => [type];
  @override
  Map<String, dynamic> toJson() =>
      _$Launches$Query$Launch$LaunchRocket$Rocket$RocketEnginesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Launches$Query$Launch$LaunchRocket$Rocket$RocketFirstStage
    extends JsonSerializable with EquatableMixin {
  Launches$Query$Launch$LaunchRocket$Rocket$RocketFirstStage();

  factory Launches$Query$Launch$LaunchRocket$Rocket$RocketFirstStage.fromJson(
          Map<String, dynamic> json) =>
      _$Launches$Query$Launch$LaunchRocket$Rocket$RocketFirstStageFromJson(
          json);

  bool? reusable;

  @override
  List<Object?> get props => [reusable];
  @override
  Map<String, dynamic> toJson() =>
      _$Launches$Query$Launch$LaunchRocket$Rocket$RocketFirstStageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Launches$Query$Launch$LaunchRocket$Rocket extends JsonSerializable
    with EquatableMixin {
  Launches$Query$Launch$LaunchRocket$Rocket();

  factory Launches$Query$Launch$LaunchRocket$Rocket.fromJson(
          Map<String, dynamic> json) =>
      _$Launches$Query$Launch$LaunchRocket$RocketFromJson(json);

  bool? active;

  String? company;

  String? country;

  String? wikipedia;

  @JsonKey(name: 'landing_legs')
  Launches$Query$Launch$LaunchRocket$Rocket$RocketLandingLegs? landingLegs;

  String? id;

  int? boosters;

  int? stages;

  Launches$Query$Launch$LaunchRocket$Rocket$RocketEngines? engines;

  String? description;

  @JsonKey(name: 'first_flight')
  DateTime? firstFlight;

  @JsonKey(name: 'first_stage')
  Launches$Query$Launch$LaunchRocket$Rocket$RocketFirstStage? firstStage;

  @override
  List<Object?> get props => [
        active,
        company,
        country,
        wikipedia,
        landingLegs,
        id,
        boosters,
        stages,
        engines,
        description,
        firstFlight,
        firstStage
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$Launches$Query$Launch$LaunchRocket$RocketToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Launches$Query$Launch$LaunchRocket extends JsonSerializable
    with EquatableMixin {
  Launches$Query$Launch$LaunchRocket();

  factory Launches$Query$Launch$LaunchRocket.fromJson(
          Map<String, dynamic> json) =>
      _$Launches$Query$Launch$LaunchRocketFromJson(json);

  @JsonKey(name: 'rocket_name')
  String? rocketName;

  @JsonKey(name: 'rocket_type')
  String? rocketType;

  Launches$Query$Launch$LaunchRocket$Rocket? rocket;

  @override
  List<Object?> get props => [rocketName, rocketType, rocket];
  @override
  Map<String, dynamic> toJson() =>
      _$Launches$Query$Launch$LaunchRocketToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Launches$Query$Launch extends JsonSerializable with EquatableMixin {
  Launches$Query$Launch();

  factory Launches$Query$Launch.fromJson(Map<String, dynamic> json) =>
      _$Launches$Query$LaunchFromJson(json);

  String? id;

  Launches$Query$Launch$LaunchLinks? links;

  @JsonKey(name: 'launch_year')
  String? launchYear;

  @JsonKey(name: 'mission_name')
  String? missionName;

  String? details;

  @JsonKey(name: 'launch_site')
  Launches$Query$Launch$LaunchSite? launchSite;

  @JsonKey(name: 'launch_success')
  bool? launchSuccess;

  @JsonKey(name: 'launch_date_local')
  DateTime? launchDateLocal;

  Launches$Query$Launch$LaunchRocket? rocket;

  @override
  List<Object?> get props => [
        id,
        links,
        launchYear,
        missionName,
        details,
        launchSite,
        launchSuccess,
        launchDateLocal,
        rocket
      ];
  @override
  Map<String, dynamic> toJson() => _$Launches$Query$LaunchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Launches$Query extends JsonSerializable with EquatableMixin {
  Launches$Query();

  factory Launches$Query.fromJson(Map<String, dynamic> json) =>
      _$Launches$QueryFromJson(json);

  List<Launches$Query$Launch?>? launches;

  @override
  List<Object?> get props => [launches];
  @override
  Map<String, dynamic> toJson() => _$Launches$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Ship$Query$Ship$ShipMission extends JsonSerializable with EquatableMixin {
  Ship$Query$Ship$ShipMission();

  factory Ship$Query$Ship$ShipMission.fromJson(Map<String, dynamic> json) =>
      _$Ship$Query$Ship$ShipMissionFromJson(json);

  String? flight;

  String? name;

  @override
  List<Object?> get props => [flight, name];
  @override
  Map<String, dynamic> toJson() => _$Ship$Query$Ship$ShipMissionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Ship$Query$Ship extends JsonSerializable with EquatableMixin {
  Ship$Query$Ship();

  factory Ship$Query$Ship.fromJson(Map<String, dynamic> json) =>
      _$Ship$Query$ShipFromJson(json);

  List<Ship$Query$Ship$ShipMission?>? missions;

  String? model;

  String? name;

  @JsonKey(name: 'home_port')
  String? homePort;

  String? id;

  String? image;

  @JsonKey(name: 'attempted_landings')
  int? attemptedLandings;

  List<String?>? roles;

  @JsonKey(name: 'year_built')
  int? yearBuilt;

  String? type;

  bool? active;

  @JsonKey(name: 'successful_landings')
  int? successfulLandings;

  String? status;

  String? url;

  @override
  List<Object?> get props => [
        missions,
        model,
        name,
        homePort,
        id,
        image,
        attemptedLandings,
        roles,
        yearBuilt,
        type,
        active,
        successfulLandings,
        status,
        url
      ];
  @override
  Map<String, dynamic> toJson() => _$Ship$Query$ShipToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Ship$Query extends JsonSerializable with EquatableMixin {
  Ship$Query();

  factory Ship$Query.fromJson(Map<String, dynamic> json) =>
      _$Ship$QueryFromJson(json);

  Ship$Query$Ship? ship;

  @override
  List<Object?> get props => [ship];
  @override
  Map<String, dynamic> toJson() => _$Ship$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Mission$Query$Mission$Payload extends JsonSerializable
    with EquatableMixin {
  Mission$Query$Mission$Payload();

  factory Mission$Query$Mission$Payload.fromJson(Map<String, dynamic> json) =>
      _$Mission$Query$Mission$PayloadFromJson(json);

  @JsonKey(name: 'payload_type')
  String? payloadType;

  String? nationality;

  String? manufacturer;

  bool? reused;

  List<String?>? customers;

  String? orbit;

  @override
  List<Object?> get props =>
      [payloadType, nationality, manufacturer, reused, customers, orbit];
  @override
  Map<String, dynamic> toJson() => _$Mission$Query$Mission$PayloadToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Mission$Query$Mission extends JsonSerializable with EquatableMixin {
  Mission$Query$Mission();

  factory Mission$Query$Mission.fromJson(Map<String, dynamic> json) =>
      _$Mission$Query$MissionFromJson(json);

  String? name;

  String? wikipedia;

  String? website;

  String? description;

  List<String?>? manufacturers;

  List<Mission$Query$Mission$Payload?>? payloads;

  @override
  List<Object?> get props =>
      [name, wikipedia, website, description, manufacturers, payloads];
  @override
  Map<String, dynamic> toJson() => _$Mission$Query$MissionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Mission$Query extends JsonSerializable with EquatableMixin {
  Mission$Query();

  factory Mission$Query.fromJson(Map<String, dynamic> json) =>
      _$Mission$QueryFromJson(json);

  Mission$Query$Mission? mission;

  @override
  List<Object?> get props => [mission];
  @override
  Map<String, dynamic> toJson() => _$Mission$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Landings$Query$Landpad$Location extends JsonSerializable
    with EquatableMixin {
  Landings$Query$Landpad$Location();

  factory Landings$Query$Landpad$Location.fromJson(Map<String, dynamic> json) =>
      _$Landings$Query$Landpad$LocationFromJson(json);

  String? name;

  String? region;

  @override
  List<Object?> get props => [name, region];
  @override
  Map<String, dynamic> toJson() =>
      _$Landings$Query$Landpad$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Landings$Query$Landpad extends JsonSerializable with EquatableMixin {
  Landings$Query$Landpad();

  factory Landings$Query$Landpad.fromJson(Map<String, dynamic> json) =>
      _$Landings$Query$LandpadFromJson(json);

  @JsonKey(name: 'attempted_landings')
  String? attemptedLandings;

  String? details;

  @JsonKey(name: 'full_name')
  String? fullName;

  String? id;

  @JsonKey(name: 'landing_type')
  String? landingType;

  Landings$Query$Landpad$Location? location;

  String? status;

  @JsonKey(name: 'successful_landings')
  String? successfulLandings;

  @override
  List<Object?> get props => [
        attemptedLandings,
        details,
        fullName,
        id,
        landingType,
        location,
        status,
        successfulLandings
      ];
  @override
  Map<String, dynamic> toJson() => _$Landings$Query$LandpadToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Landings$Query extends JsonSerializable with EquatableMixin {
  Landings$Query();

  factory Landings$Query.fromJson(Map<String, dynamic> json) =>
      _$Landings$QueryFromJson(json);

  List<Landings$Query$Landpad?>? landpads;

  @override
  List<Object?> get props => [landpads];
  @override
  Map<String, dynamic> toJson() => _$Landings$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Dragon$Query$Dragon$DragonHeatShield extends JsonSerializable
    with EquatableMixin {
  Dragon$Query$Dragon$DragonHeatShield();

  factory Dragon$Query$Dragon$DragonHeatShield.fromJson(
          Map<String, dynamic> json) =>
      _$Dragon$Query$Dragon$DragonHeatShieldFromJson(json);

  @JsonKey(name: 'dev_partner')
  String? devPartner;

  String? material;

  @JsonKey(name: 'size_meters')
  double? sizeMeters;

  @override
  List<Object?> get props => [devPartner, material, sizeMeters];
  @override
  Map<String, dynamic> toJson() =>
      _$Dragon$Query$Dragon$DragonHeatShieldToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Dragon$Query$Dragon$DragonThrust extends JsonSerializable
    with EquatableMixin {
  Dragon$Query$Dragon$DragonThrust();

  factory Dragon$Query$Dragon$DragonThrust.fromJson(
          Map<String, dynamic> json) =>
      _$Dragon$Query$Dragon$DragonThrustFromJson(json);

  int? amount;

  String? type;

  @override
  List<Object?> get props => [amount, type];
  @override
  Map<String, dynamic> toJson() =>
      _$Dragon$Query$Dragon$DragonThrustToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Dragon$Query$Dragon extends JsonSerializable with EquatableMixin {
  Dragon$Query$Dragon();

  factory Dragon$Query$Dragon.fromJson(Map<String, dynamic> json) =>
      _$Dragon$Query$DragonFromJson(json);

  String? description;

  bool? active;

  String? wikipedia;

  @JsonKey(name: 'heat_shield')
  Dragon$Query$Dragon$DragonHeatShield? heatShield;

  @JsonKey(name: 'orbit_duration_yr')
  int? orbitDurationYr;

  @JsonKey(name: 'crew_capacity')
  int? crewCapacity;

  String? name;

  String? type;

  List<Dragon$Query$Dragon$DragonThrust?>? thrusters;

  @override
  List<Object?> get props => [
        description,
        active,
        wikipedia,
        heatShield,
        orbitDurationYr,
        crewCapacity,
        name,
        type,
        thrusters
      ];
  @override
  Map<String, dynamic> toJson() => _$Dragon$Query$DragonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Dragon$Query extends JsonSerializable with EquatableMixin {
  Dragon$Query();

  factory Dragon$Query.fromJson(Map<String, dynamic> json) =>
      _$Dragon$QueryFromJson(json);

  Dragon$Query$Dragon? dragon;

  @override
  List<Object?> get props => [dragon];
  @override
  Map<String, dynamic> toJson() => _$Dragon$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Dragons$Query$Dragon$DragonHeatShield extends JsonSerializable
    with EquatableMixin {
  Dragons$Query$Dragon$DragonHeatShield();

  factory Dragons$Query$Dragon$DragonHeatShield.fromJson(
          Map<String, dynamic> json) =>
      _$Dragons$Query$Dragon$DragonHeatShieldFromJson(json);

  String? material;

  @JsonKey(name: 'dev_partner')
  String? devPartner;

  @JsonKey(name: 'temp_degrees')
  int? tempDegrees;

  @override
  List<Object?> get props => [material, devPartner, tempDegrees];
  @override
  Map<String, dynamic> toJson() =>
      _$Dragons$Query$Dragon$DragonHeatShieldToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Dragons$Query$Dragon$DragonThrust extends JsonSerializable
    with EquatableMixin {
  Dragons$Query$Dragon$DragonThrust();

  factory Dragons$Query$Dragon$DragonThrust.fromJson(
          Map<String, dynamic> json) =>
      _$Dragons$Query$Dragon$DragonThrustFromJson(json);

  int? amount;

  String? type;

  @JsonKey(name: 'fuel_1')
  String? fuel1;

  @JsonKey(name: 'fuel_2')
  String? fuel2;

  @override
  List<Object?> get props => [amount, type, fuel1, fuel2];
  @override
  Map<String, dynamic> toJson() =>
      _$Dragons$Query$Dragon$DragonThrustToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Dragons$Query$Dragon extends JsonSerializable with EquatableMixin {
  Dragons$Query$Dragon();

  factory Dragons$Query$Dragon.fromJson(Map<String, dynamic> json) =>
      _$Dragons$Query$DragonFromJson(json);

  bool? active;

  String? wikipedia;

  String? name;

  @JsonKey(name: 'crew_capacity')
  int? crewCapacity;

  @JsonKey(name: 'orbit_duration_yr')
  int? orbitDurationYr;

  String? type;

  String? description;

  @JsonKey(name: 'heat_shield')
  Dragons$Query$Dragon$DragonHeatShield? heatShield;

  List<Dragons$Query$Dragon$DragonThrust?>? thrusters;

  @override
  List<Object?> get props => [
        active,
        wikipedia,
        name,
        crewCapacity,
        orbitDurationYr,
        type,
        description,
        heatShield,
        thrusters
      ];
  @override
  Map<String, dynamic> toJson() => _$Dragons$Query$DragonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Dragons$Query extends JsonSerializable with EquatableMixin {
  Dragons$Query();

  factory Dragons$Query.fromJson(Map<String, dynamic> json) =>
      _$Dragons$QueryFromJson(json);

  List<Dragons$Query$Dragon?>? dragons;

  @override
  List<Object?> get props => [dragons];
  @override
  Map<String, dynamic> toJson() => _$Dragons$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Payloads$Query$Payload extends JsonSerializable with EquatableMixin {
  Payloads$Query$Payload();

  factory Payloads$Query$Payload.fromJson(Map<String, dynamic> json) =>
      _$Payloads$Query$PayloadFromJson(json);

  String? manufacturer;

  String? id;

  String? nationality;

  String? orbit;

  @JsonKey(name: 'payload_type')
  String? payloadType;

  bool? reused;

  @override
  List<Object?> get props =>
      [manufacturer, id, nationality, orbit, payloadType, reused];
  @override
  Map<String, dynamic> toJson() => _$Payloads$Query$PayloadToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Payloads$Query extends JsonSerializable with EquatableMixin {
  Payloads$Query();

  factory Payloads$Query.fromJson(Map<String, dynamic> json) =>
      _$Payloads$QueryFromJson(json);

  List<Payloads$Query$Payload?>? payloads;

  @override
  List<Object?> get props => [payloads];
  @override
  Map<String, dynamic> toJson() => _$Payloads$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Missions$Query$Mission$Payload extends JsonSerializable
    with EquatableMixin {
  Missions$Query$Mission$Payload();

  factory Missions$Query$Mission$Payload.fromJson(Map<String, dynamic> json) =>
      _$Missions$Query$Mission$PayloadFromJson(json);

  String? nationality;

  @JsonKey(name: 'payload_type')
  String? payloadType;

  String? manufacturer;

  List<String?>? customers;

  bool? reused;

  @override
  List<Object?> get props =>
      [nationality, payloadType, manufacturer, customers, reused];
  @override
  Map<String, dynamic> toJson() => _$Missions$Query$Mission$PayloadToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Missions$Query$Mission extends JsonSerializable with EquatableMixin {
  Missions$Query$Mission();

  factory Missions$Query$Mission.fromJson(Map<String, dynamic> json) =>
      _$Missions$Query$MissionFromJson(json);

  String? id;

  String? name;

  String? wikipedia;

  String? website;

  String? description;

  List<String?>? manufacturers;

  List<Missions$Query$Mission$Payload?>? payloads;

  @override
  List<Object?> get props =>
      [id, name, wikipedia, website, description, manufacturers, payloads];
  @override
  Map<String, dynamic> toJson() => _$Missions$Query$MissionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Missions$Query extends JsonSerializable with EquatableMixin {
  Missions$Query();

  factory Missions$Query.fromJson(Map<String, dynamic> json) =>
      _$Missions$QueryFromJson(json);

  List<Missions$Query$Mission?>? missions;

  @override
  List<Object?> get props => [missions];
  @override
  Map<String, dynamic> toJson() => _$Missions$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class History$Query$History$Launch$LaunchRocket$Rocket$RocketLandingLegs
    extends JsonSerializable with EquatableMixin {
  History$Query$History$Launch$LaunchRocket$Rocket$RocketLandingLegs();

  factory History$Query$History$Launch$LaunchRocket$Rocket$RocketLandingLegs.fromJson(
          Map<String, dynamic> json) =>
      _$History$Query$History$Launch$LaunchRocket$Rocket$RocketLandingLegsFromJson(
          json);

  String? material;

  int? number;

  @override
  List<Object?> get props => [material, number];
  @override
  Map<String, dynamic> toJson() =>
      _$History$Query$History$Launch$LaunchRocket$Rocket$RocketLandingLegsToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class History$Query$History$Launch$LaunchRocket$Rocket$RocketEngines
    extends JsonSerializable with EquatableMixin {
  History$Query$History$Launch$LaunchRocket$Rocket$RocketEngines();

  factory History$Query$History$Launch$LaunchRocket$Rocket$RocketEngines.fromJson(
          Map<String, dynamic> json) =>
      _$History$Query$History$Launch$LaunchRocket$Rocket$RocketEnginesFromJson(
          json);

  int? number;

  String? version;

  @override
  List<Object?> get props => [number, version];
  @override
  Map<String, dynamic> toJson() =>
      _$History$Query$History$Launch$LaunchRocket$Rocket$RocketEnginesToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class History$Query$History$Launch$LaunchRocket$Rocket extends JsonSerializable
    with EquatableMixin {
  History$Query$History$Launch$LaunchRocket$Rocket();

  factory History$Query$History$Launch$LaunchRocket$Rocket.fromJson(
          Map<String, dynamic> json) =>
      _$History$Query$History$Launch$LaunchRocket$RocketFromJson(json);

  bool? active;

  String? name;

  @JsonKey(name: 'landing_legs')
  History$Query$History$Launch$LaunchRocket$Rocket$RocketLandingLegs?
      landingLegs;

  @JsonKey(name: 'success_rate_pct')
  int? successRatePct;

  History$Query$History$Launch$LaunchRocket$Rocket$RocketEngines? engines;

  int? boosters;

  @JsonKey(name: 'cost_per_launch')
  int? costPerLaunch;

  String? country;

  @override
  List<Object?> get props => [
        active,
        name,
        landingLegs,
        successRatePct,
        engines,
        boosters,
        costPerLaunch,
        country
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$History$Query$History$Launch$LaunchRocket$RocketToJson(this);
}

@JsonSerializable(explicitToJson: true)
class History$Query$History$Launch$LaunchRocket extends JsonSerializable
    with EquatableMixin {
  History$Query$History$Launch$LaunchRocket();

  factory History$Query$History$Launch$LaunchRocket.fromJson(
          Map<String, dynamic> json) =>
      _$History$Query$History$Launch$LaunchRocketFromJson(json);

  @JsonKey(name: 'rocket_name')
  String? rocketName;

  History$Query$History$Launch$LaunchRocket$Rocket? rocket;

  @override
  List<Object?> get props => [rocketName, rocket];
  @override
  Map<String, dynamic> toJson() =>
      _$History$Query$History$Launch$LaunchRocketToJson(this);
}

@JsonSerializable(explicitToJson: true)
class History$Query$History$Launch extends JsonSerializable
    with EquatableMixin {
  History$Query$History$Launch();

  factory History$Query$History$Launch.fromJson(Map<String, dynamic> json) =>
      _$History$Query$History$LaunchFromJson(json);

  @JsonKey(name: 'launch_year')
  String? launchYear;

  @JsonKey(name: 'mission_name')
  String? missionName;

  @JsonKey(name: 'is_tentative')
  bool? isTentative;

  String? details;

  @JsonKey(name: 'launch_success')
  bool? launchSuccess;

  History$Query$History$Launch$LaunchRocket? rocket;

  @override
  List<Object?> get props =>
      [launchYear, missionName, isTentative, details, launchSuccess, rocket];
  @override
  Map<String, dynamic> toJson() => _$History$Query$History$LaunchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class History$Query$History extends JsonSerializable with EquatableMixin {
  History$Query$History();

  factory History$Query$History.fromJson(Map<String, dynamic> json) =>
      _$History$Query$HistoryFromJson(json);

  String? title;

  String? details;

  History$Query$History$Launch? flight;

  @override
  List<Object?> get props => [title, details, flight];
  @override
  Map<String, dynamic> toJson() => _$History$Query$HistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class History$Query extends JsonSerializable with EquatableMixin {
  History$Query();

  factory History$Query.fromJson(Map<String, dynamic> json) =>
      _$History$QueryFromJson(json);

  History$Query$History? history;

  @override
  List<Object?> get props => [history];
  @override
  Map<String, dynamic> toJson() => _$History$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Rockets$Query$Rocket$RocketFirstStage extends JsonSerializable
    with EquatableMixin {
  Rockets$Query$Rocket$RocketFirstStage();

  factory Rockets$Query$Rocket$RocketFirstStage.fromJson(
          Map<String, dynamic> json) =>
      _$Rockets$Query$Rocket$RocketFirstStageFromJson(json);

  bool? reusable;

  int? engines;

  @override
  List<Object?> get props => [reusable, engines];
  @override
  Map<String, dynamic> toJson() =>
      _$Rockets$Query$Rocket$RocketFirstStageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Rockets$Query$Rocket$RocketLandingLegs extends JsonSerializable
    with EquatableMixin {
  Rockets$Query$Rocket$RocketLandingLegs();

  factory Rockets$Query$Rocket$RocketLandingLegs.fromJson(
          Map<String, dynamic> json) =>
      _$Rockets$Query$Rocket$RocketLandingLegsFromJson(json);

  String? material;

  int? number;

  @override
  List<Object?> get props => [material, number];
  @override
  Map<String, dynamic> toJson() =>
      _$Rockets$Query$Rocket$RocketLandingLegsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Rockets$Query$Rocket$RocketSecondStage extends JsonSerializable
    with EquatableMixin {
  Rockets$Query$Rocket$RocketSecondStage();

  factory Rockets$Query$Rocket$RocketSecondStage.fromJson(
          Map<String, dynamic> json) =>
      _$Rockets$Query$Rocket$RocketSecondStageFromJson(json);

  @JsonKey(name: 'fuel_amount_tons')
  double? fuelAmountTons;

  int? engines;

  @override
  List<Object?> get props => [fuelAmountTons, engines];
  @override
  Map<String, dynamic> toJson() =>
      _$Rockets$Query$Rocket$RocketSecondStageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Rockets$Query$Rocket$Distance extends JsonSerializable
    with EquatableMixin {
  Rockets$Query$Rocket$Distance();

  factory Rockets$Query$Rocket$Distance.fromJson(Map<String, dynamic> json) =>
      _$Rockets$Query$Rocket$DistanceFromJson(json);

  double? meters;

  double? feet;

  @override
  List<Object?> get props => [meters, feet];
  @override
  Map<String, dynamic> toJson() => _$Rockets$Query$Rocket$DistanceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Rockets$Query$Rocket extends JsonSerializable with EquatableMixin {
  Rockets$Query$Rocket();

  factory Rockets$Query$Rocket.fromJson(Map<String, dynamic> json) =>
      _$Rockets$Query$RocketFromJson(json);

  bool? active;

  int? boosters;

  String? company;

  @JsonKey(name: 'first_stage')
  Rockets$Query$Rocket$RocketFirstStage? firstStage;

  int? stages;

  @JsonKey(name: 'first_flight')
  DateTime? firstFlight;

  @JsonKey(name: 'landing_legs')
  Rockets$Query$Rocket$RocketLandingLegs? landingLegs;

  @JsonKey(name: 'cost_per_launch')
  int? costPerLaunch;

  String? name;

  @JsonKey(name: 'second_stage')
  Rockets$Query$Rocket$RocketSecondStage? secondStage;

  @JsonKey(name: 'success_rate_pct')
  int? successRatePct;

  String? id;

  String? description;

  Rockets$Query$Rocket$Distance? height;

  @override
  List<Object?> get props => [
        active,
        boosters,
        company,
        firstStage,
        stages,
        firstFlight,
        landingLegs,
        costPerLaunch,
        name,
        secondStage,
        successRatePct,
        id,
        description,
        height
      ];
  @override
  Map<String, dynamic> toJson() => _$Rockets$Query$RocketToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Rockets$Query extends JsonSerializable with EquatableMixin {
  Rockets$Query();

  factory Rockets$Query.fromJson(Map<String, dynamic> json) =>
      _$Rockets$QueryFromJson(json);

  List<Rockets$Query$Rocket?>? rockets;

  @override
  List<Object?> get props => [rockets];
  @override
  Map<String, dynamic> toJson() => _$Rockets$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Histories$Query$History$Link extends JsonSerializable
    with EquatableMixin {
  Histories$Query$History$Link();

  factory Histories$Query$History$Link.fromJson(Map<String, dynamic> json) =>
      _$Histories$Query$History$LinkFromJson(json);

  String? article;

  @override
  List<Object?> get props => [article];
  @override
  Map<String, dynamic> toJson() => _$Histories$Query$History$LinkToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Histories$Query$History$Launch$LaunchRocket extends JsonSerializable
    with EquatableMixin {
  Histories$Query$History$Launch$LaunchRocket();

  factory Histories$Query$History$Launch$LaunchRocket.fromJson(
          Map<String, dynamic> json) =>
      _$Histories$Query$History$Launch$LaunchRocketFromJson(json);

  @JsonKey(name: 'rocket_name')
  String? rocketName;

  @override
  List<Object?> get props => [rocketName];
  @override
  Map<String, dynamic> toJson() =>
      _$Histories$Query$History$Launch$LaunchRocketToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Histories$Query$History$Launch extends JsonSerializable
    with EquatableMixin {
  Histories$Query$History$Launch();

  factory Histories$Query$History$Launch.fromJson(Map<String, dynamic> json) =>
      _$Histories$Query$History$LaunchFromJson(json);

  @JsonKey(name: 'launch_year')
  String? launchYear;

  String? id;

  bool? upcoming;

  @JsonKey(name: 'mission_id')
  List<String?>? missionId;

  @JsonKey(name: 'mission_name')
  String? missionName;

  @JsonKey(name: 'launch_success')
  bool? launchSuccess;

  Histories$Query$History$Launch$LaunchRocket? rocket;

  @override
  List<Object?> get props =>
      [launchYear, id, upcoming, missionId, missionName, launchSuccess, rocket];
  @override
  Map<String, dynamic> toJson() => _$Histories$Query$History$LaunchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Histories$Query$History extends JsonSerializable with EquatableMixin {
  Histories$Query$History();

  factory Histories$Query$History.fromJson(Map<String, dynamic> json) =>
      _$Histories$Query$HistoryFromJson(json);

  String? id;

  String? details;

  String? title;

  Histories$Query$History$Link? links;

  Histories$Query$History$Launch? flight;

  @override
  List<Object?> get props => [id, details, title, links, flight];
  @override
  Map<String, dynamic> toJson() => _$Histories$Query$HistoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Histories$Query extends JsonSerializable with EquatableMixin {
  Histories$Query();

  factory Histories$Query.fromJson(Map<String, dynamic> json) =>
      _$Histories$QueryFromJson(json);

  List<Histories$Query$History?>? histories;

  @override
  List<Object?> get props => [histories];
  @override
  Map<String, dynamic> toJson() => _$Histories$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Rocket$Query$Rocket$RocketSecondStage extends JsonSerializable
    with EquatableMixin {
  Rocket$Query$Rocket$RocketSecondStage();

  factory Rocket$Query$Rocket$RocketSecondStage.fromJson(
          Map<String, dynamic> json) =>
      _$Rocket$Query$Rocket$RocketSecondStageFromJson(json);

  int? engines;

  @override
  List<Object?> get props => [engines];
  @override
  Map<String, dynamic> toJson() =>
      _$Rocket$Query$Rocket$RocketSecondStageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Rocket$Query$Rocket$RocketFirstStage extends JsonSerializable
    with EquatableMixin {
  Rocket$Query$Rocket$RocketFirstStage();

  factory Rocket$Query$Rocket$RocketFirstStage.fromJson(
          Map<String, dynamic> json) =>
      _$Rocket$Query$Rocket$RocketFirstStageFromJson(json);

  bool? reusable;

  int? engines;

  @override
  List<Object?> get props => [reusable, engines];
  @override
  Map<String, dynamic> toJson() =>
      _$Rocket$Query$Rocket$RocketFirstStageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Rocket$Query$Rocket$RocketLandingLegs extends JsonSerializable
    with EquatableMixin {
  Rocket$Query$Rocket$RocketLandingLegs();

  factory Rocket$Query$Rocket$RocketLandingLegs.fromJson(
          Map<String, dynamic> json) =>
      _$Rocket$Query$Rocket$RocketLandingLegsFromJson(json);

  String? material;

  int? number;

  @override
  List<Object?> get props => [material, number];
  @override
  Map<String, dynamic> toJson() =>
      _$Rocket$Query$Rocket$RocketLandingLegsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Rocket$Query$Rocket extends JsonSerializable with EquatableMixin {
  Rocket$Query$Rocket();

  factory Rocket$Query$Rocket.fromJson(Map<String, dynamic> json) =>
      _$Rocket$Query$RocketFromJson(json);

  bool? active;

  int? boosters;

  String? name;

  @JsonKey(name: 'success_rate_pct')
  int? successRatePct;

  @JsonKey(name: 'second_stage')
  Rocket$Query$Rocket$RocketSecondStage? secondStage;

  @JsonKey(name: 'first_stage')
  Rocket$Query$Rocket$RocketFirstStage? firstStage;

  @JsonKey(name: 'cost_per_launch')
  int? costPerLaunch;

  @JsonKey(name: 'landing_legs')
  Rocket$Query$Rocket$RocketLandingLegs? landingLegs;

  @JsonKey(name: 'first_flight')
  DateTime? firstFlight;

  @override
  List<Object?> get props => [
        active,
        boosters,
        name,
        successRatePct,
        secondStage,
        firstStage,
        costPerLaunch,
        landingLegs,
        firstFlight
      ];
  @override
  Map<String, dynamic> toJson() => _$Rocket$Query$RocketToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Rocket$Query extends JsonSerializable with EquatableMixin {
  Rocket$Query();

  factory Rocket$Query.fromJson(Map<String, dynamic> json) =>
      _$Rocket$QueryFromJson(json);

  Rocket$Query$Rocket? rocket;

  @override
  List<Object?> get props => [rocket];
  @override
  Map<String, dynamic> toJson() => _$Rocket$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Ships$Query$Ship$ShipMission extends JsonSerializable
    with EquatableMixin {
  Ships$Query$Ship$ShipMission();

  factory Ships$Query$Ship$ShipMission.fromJson(Map<String, dynamic> json) =>
      _$Ships$Query$Ship$ShipMissionFromJson(json);

  String? name;

  String? flight;

  @override
  List<Object?> get props => [name, flight];
  @override
  Map<String, dynamic> toJson() => _$Ships$Query$Ship$ShipMissionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Ships$Query$Ship extends JsonSerializable with EquatableMixin {
  Ships$Query$Ship();

  factory Ships$Query$Ship.fromJson(Map<String, dynamic> json) =>
      _$Ships$Query$ShipFromJson(json);

  bool? active;

  String? id;

  String? image;

  String? name;

  List<Ships$Query$Ship$ShipMission?>? missions;

  @JsonKey(name: 'successful_landings')
  int? successfulLandings;

  @JsonKey(name: 'year_built')
  int? yearBuilt;

  @JsonKey(name: 'attempted_landings')
  int? attemptedLandings;

  @JsonKey(name: 'class')
  int? kw$class;

  List<String?>? roles;

  @JsonKey(name: 'home_port')
  String? homePort;

  String? model;

  String? type;

  @override
  List<Object?> get props => [
        active,
        id,
        image,
        name,
        missions,
        successfulLandings,
        yearBuilt,
        attemptedLandings,
        kw$class,
        roles,
        homePort,
        model,
        type
      ];
  @override
  Map<String, dynamic> toJson() => _$Ships$Query$ShipToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Ships$Query extends JsonSerializable with EquatableMixin {
  Ships$Query();

  factory Ships$Query.fromJson(Map<String, dynamic> json) =>
      _$Ships$QueryFromJson(json);

  List<Ships$Query$Ship?>? ships;

  @override
  List<Object?> get props => [ships];
  @override
  Map<String, dynamic> toJson() => _$Ships$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Launch$Query$Launch$LaunchLinks extends JsonSerializable
    with EquatableMixin {
  Launch$Query$Launch$LaunchLinks();

  factory Launch$Query$Launch$LaunchLinks.fromJson(Map<String, dynamic> json) =>
      _$Launch$Query$Launch$LaunchLinksFromJson(json);

  @JsonKey(name: 'flickr_images')
  List<String?>? flickrImages;

  @JsonKey(name: 'video_link')
  String? videoLink;

  @JsonKey(name: 'reddit_launch')
  String? redditLaunch;

  @override
  List<Object?> get props => [flickrImages, videoLink, redditLaunch];
  @override
  Map<String, dynamic> toJson() =>
      _$Launch$Query$Launch$LaunchLinksToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Launch$Query$Launch$LaunchRocket$Rocket extends JsonSerializable
    with EquatableMixin {
  Launch$Query$Launch$LaunchRocket$Rocket();

  factory Launch$Query$Launch$LaunchRocket$Rocket.fromJson(
          Map<String, dynamic> json) =>
      _$Launch$Query$Launch$LaunchRocket$RocketFromJson(json);

  String? id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$Launch$Query$Launch$LaunchRocket$RocketToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Launch$Query$Launch$LaunchRocket extends JsonSerializable
    with EquatableMixin {
  Launch$Query$Launch$LaunchRocket();

  factory Launch$Query$Launch$LaunchRocket.fromJson(
          Map<String, dynamic> json) =>
      _$Launch$Query$Launch$LaunchRocketFromJson(json);

  Launch$Query$Launch$LaunchRocket$Rocket? rocket;

  @JsonKey(name: 'rocket_name')
  String? rocketName;

  @JsonKey(name: 'rocket_type')
  String? rocketType;

  @override
  List<Object?> get props => [rocket, rocketName, rocketType];
  @override
  Map<String, dynamic> toJson() =>
      _$Launch$Query$Launch$LaunchRocketToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Launch$Query$Launch extends JsonSerializable with EquatableMixin {
  Launch$Query$Launch();

  factory Launch$Query$Launch.fromJson(Map<String, dynamic> json) =>
      _$Launch$Query$LaunchFromJson(json);

  String? id;

  bool? upcoming;

  @JsonKey(name: 'mission_id')
  List<String?>? missionId;

  @JsonKey(name: 'mission_name')
  String? missionName;

  Launch$Query$Launch$LaunchLinks? links;

  @JsonKey(name: 'launch_year')
  String? launchYear;

  Launch$Query$Launch$LaunchRocket? rocket;

  @override
  List<Object?> get props =>
      [id, upcoming, missionId, missionName, links, launchYear, rocket];
  @override
  Map<String, dynamic> toJson() => _$Launch$Query$LaunchToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Launch$Query extends JsonSerializable with EquatableMixin {
  Launch$Query();

  factory Launch$Query.fromJson(Map<String, dynamic> json) =>
      _$Launch$QueryFromJson(json);

  Launch$Query$Launch? launch;

  @override
  List<Object?> get props => [launch];
  @override
  Map<String, dynamic> toJson() => _$Launch$QueryToJson(this);
}

final LAUNCHES_QUERY_DOCUMENT_OPERATION_NAME = 'launches';
final LAUNCHES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'launches'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'launches'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'links'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'article_link'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'video_link'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'wikipedia'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'flickr_images'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'reddit_launch'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'launch_year'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'mission_name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'details'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'launch_site'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'site_name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'launch_success'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'launch_date_local'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'rocket'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'rocket_name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'rocket_type'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'rocket'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'active'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'company'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'country'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'wikipedia'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'landing_legs'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'material'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'number'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'boosters'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'stages'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'engines'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'type'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'description'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'first_flight'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'first_stage'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'reusable'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ]))
                  ]))
            ]))
      ]))
]);

class LaunchesQuery extends GraphQLQuery<Launches$Query, JsonSerializable> {
  LaunchesQuery();

  @override
  final DocumentNode document = LAUNCHES_QUERY_DOCUMENT;

  @override
  final String operationName = LAUNCHES_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  Launches$Query parse(Map<String, dynamic> json) =>
      Launches$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ShipArguments extends JsonSerializable with EquatableMixin {
  ShipArguments({required this.id});

  @override
  factory ShipArguments.fromJson(Map<String, dynamic> json) =>
      _$ShipArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$ShipArgumentsToJson(this);
}

final SHIP_QUERY_DOCUMENT_OPERATION_NAME = 'ship';
final SHIP_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ship'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'ship'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'missions'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'flight'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'model'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'home_port'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'image'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'attempted_landings'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'roles'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'year_built'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'type'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'active'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'successful_landings'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'status'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'url'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class ShipQuery extends GraphQLQuery<Ship$Query, ShipArguments> {
  ShipQuery({required this.variables});

  @override
  final DocumentNode document = SHIP_QUERY_DOCUMENT;

  @override
  final String operationName = SHIP_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final ShipArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Ship$Query parse(Map<String, dynamic> json) => Ship$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class MissionArguments extends JsonSerializable with EquatableMixin {
  MissionArguments({required this.id});

  @override
  factory MissionArguments.fromJson(Map<String, dynamic> json) =>
      _$MissionArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$MissionArgumentsToJson(this);
}

final MISSION_QUERY_DOCUMENT_OPERATION_NAME = 'mission';
final MISSION_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'mission'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'mission'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'wikipedia'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'website'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'manufacturers'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'payloads'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'payload_type'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'nationality'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'manufacturer'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'reused'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'customers'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'orbit'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class MissionQuery extends GraphQLQuery<Mission$Query, MissionArguments> {
  MissionQuery({required this.variables});

  @override
  final DocumentNode document = MISSION_QUERY_DOCUMENT;

  @override
  final String operationName = MISSION_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final MissionArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Mission$Query parse(Map<String, dynamic> json) =>
      Mission$Query.fromJson(json);
}

final LANDINGS_QUERY_DOCUMENT_OPERATION_NAME = 'landings';
final LANDINGS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'landings'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'landpads'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'attempted_landings'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'details'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'full_name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'landing_type'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'location'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'region'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'status'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'successful_landings'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class LandingsQuery extends GraphQLQuery<Landings$Query, JsonSerializable> {
  LandingsQuery();

  @override
  final DocumentNode document = LANDINGS_QUERY_DOCUMENT;

  @override
  final String operationName = LANDINGS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  Landings$Query parse(Map<String, dynamic> json) =>
      Landings$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DragonArguments extends JsonSerializable with EquatableMixin {
  DragonArguments({required this.id});

  @override
  factory DragonArguments.fromJson(Map<String, dynamic> json) =>
      _$DragonArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$DragonArgumentsToJson(this);
}

final DRAGON_QUERY_DOCUMENT_OPERATION_NAME = 'dragon';
final DRAGON_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'dragon'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'dragon'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'active'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'wikipedia'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'heat_shield'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'dev_partner'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'material'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'size_meters'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'orbit_duration_yr'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'crew_capacity'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'type'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'thrusters'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'amount'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'type'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class DragonQuery extends GraphQLQuery<Dragon$Query, DragonArguments> {
  DragonQuery({required this.variables});

  @override
  final DocumentNode document = DRAGON_QUERY_DOCUMENT;

  @override
  final String operationName = DRAGON_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final DragonArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Dragon$Query parse(Map<String, dynamic> json) => Dragon$Query.fromJson(json);
}

final DRAGONS_QUERY_DOCUMENT_OPERATION_NAME = 'dragons';
final DRAGONS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'dragons'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'dragons'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'active'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'wikipedia'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'crew_capacity'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'orbit_duration_yr'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'type'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'heat_shield'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'material'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'dev_partner'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'temp_degrees'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'thrusters'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'amount'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'type'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'fuel_1'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'fuel_2'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class DragonsQuery extends GraphQLQuery<Dragons$Query, JsonSerializable> {
  DragonsQuery();

  @override
  final DocumentNode document = DRAGONS_QUERY_DOCUMENT;

  @override
  final String operationName = DRAGONS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  Dragons$Query parse(Map<String, dynamic> json) =>
      Dragons$Query.fromJson(json);
}

final PAYLOADS_QUERY_DOCUMENT_OPERATION_NAME = 'payloads';
final PAYLOADS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'payloads'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'payloads'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'manufacturer'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'nationality'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'orbit'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'payload_type'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'reused'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class PayloadsQuery extends GraphQLQuery<Payloads$Query, JsonSerializable> {
  PayloadsQuery();

  @override
  final DocumentNode document = PAYLOADS_QUERY_DOCUMENT;

  @override
  final String operationName = PAYLOADS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  Payloads$Query parse(Map<String, dynamic> json) =>
      Payloads$Query.fromJson(json);
}

final MISSIONS_QUERY_DOCUMENT_OPERATION_NAME = 'missions';
final MISSIONS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'missions'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'missions'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'wikipedia'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'website'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'manufacturers'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'payloads'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'nationality'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'payload_type'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'manufacturer'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'customers'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'reused'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class MissionsQuery extends GraphQLQuery<Missions$Query, JsonSerializable> {
  MissionsQuery();

  @override
  final DocumentNode document = MISSIONS_QUERY_DOCUMENT;

  @override
  final String operationName = MISSIONS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  Missions$Query parse(Map<String, dynamic> json) =>
      Missions$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class HistoryArguments extends JsonSerializable with EquatableMixin {
  HistoryArguments({required this.id});

  @override
  factory HistoryArguments.fromJson(Map<String, dynamic> json) =>
      _$HistoryArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$HistoryArgumentsToJson(this);
}

final HISTORY_QUERY_DOCUMENT_OPERATION_NAME = 'history';
final HISTORY_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'history'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'history'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'title'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'details'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'flight'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'launch_year'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'mission_name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'is_tentative'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'details'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'launch_success'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'rocket'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'rocket_name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'rocket'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'active'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'name'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'landing_legs'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'material'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'number'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'success_rate_pct'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'engines'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'number'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'version'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'boosters'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'cost_per_launch'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'country'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ]))
                  ]))
            ]))
      ]))
]);

class HistoryQuery extends GraphQLQuery<History$Query, HistoryArguments> {
  HistoryQuery({required this.variables});

  @override
  final DocumentNode document = HISTORY_QUERY_DOCUMENT;

  @override
  final String operationName = HISTORY_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final HistoryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  History$Query parse(Map<String, dynamic> json) =>
      History$Query.fromJson(json);
}

final ROCKETS_QUERY_DOCUMENT_OPERATION_NAME = 'rockets';
final ROCKETS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'rockets'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'rockets'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'active'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'boosters'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'company'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'first_stage'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'reusable'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'engines'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'stages'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'first_flight'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'landing_legs'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'material'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'number'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'cost_per_launch'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'second_stage'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'fuel_amount_tons'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'engines'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'success_rate_pct'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'height'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'meters'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'feet'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class RocketsQuery extends GraphQLQuery<Rockets$Query, JsonSerializable> {
  RocketsQuery();

  @override
  final DocumentNode document = ROCKETS_QUERY_DOCUMENT;

  @override
  final String operationName = ROCKETS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  Rockets$Query parse(Map<String, dynamic> json) =>
      Rockets$Query.fromJson(json);
}

final HISTORIES_QUERY_DOCUMENT_OPERATION_NAME = 'histories';
final HISTORIES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'histories'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'histories'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'details'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'title'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'links'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'article'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'flight'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'launch_year'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'upcoming'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'mission_id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'mission_name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'launch_success'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'rocket'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'rocket_name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ]))
]);

class HistoriesQuery extends GraphQLQuery<Histories$Query, JsonSerializable> {
  HistoriesQuery();

  @override
  final DocumentNode document = HISTORIES_QUERY_DOCUMENT;

  @override
  final String operationName = HISTORIES_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  Histories$Query parse(Map<String, dynamic> json) =>
      Histories$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class RocketArguments extends JsonSerializable with EquatableMixin {
  RocketArguments({required this.id});

  @override
  factory RocketArguments.fromJson(Map<String, dynamic> json) =>
      _$RocketArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$RocketArgumentsToJson(this);
}

final ROCKET_QUERY_DOCUMENT_OPERATION_NAME = 'rocket';
final ROCKET_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'rocket'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'rocket'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'active'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'boosters'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'success_rate_pct'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'second_stage'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'engines'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'first_stage'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'reusable'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'engines'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'cost_per_launch'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'landing_legs'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'material'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'number'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'first_flight'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class RocketQuery extends GraphQLQuery<Rocket$Query, RocketArguments> {
  RocketQuery({required this.variables});

  @override
  final DocumentNode document = ROCKET_QUERY_DOCUMENT;

  @override
  final String operationName = ROCKET_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final RocketArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Rocket$Query parse(Map<String, dynamic> json) => Rocket$Query.fromJson(json);
}

final SHIPS_QUERY_DOCUMENT_OPERATION_NAME = 'ships';
final SHIPS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ships'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'ships'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'active'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'image'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'missions'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'flight'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'successful_landings'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'year_built'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'attempted_landings'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'class'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'roles'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'home_port'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'model'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'type'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class ShipsQuery extends GraphQLQuery<Ships$Query, JsonSerializable> {
  ShipsQuery();

  @override
  final DocumentNode document = SHIPS_QUERY_DOCUMENT;

  @override
  final String operationName = SHIPS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  Ships$Query parse(Map<String, dynamic> json) => Ships$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class LaunchArguments extends JsonSerializable with EquatableMixin {
  LaunchArguments({required this.id});

  @override
  factory LaunchArguments.fromJson(Map<String, dynamic> json) =>
      _$LaunchArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$LaunchArgumentsToJson(this);
}

final LAUNCH_QUERY_DOCUMENT_OPERATION_NAME = 'launch';
final LAUNCH_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'launch'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'launch'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'upcoming'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'mission_id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'mission_name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'links'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'flickr_images'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'video_link'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'reddit_launch'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'launch_year'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'rocket'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'rocket'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'id'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'rocket_name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'rocket_type'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class LaunchQuery extends GraphQLQuery<Launch$Query, LaunchArguments> {
  LaunchQuery({required this.variables});

  @override
  final DocumentNode document = LAUNCH_QUERY_DOCUMENT;

  @override
  final String operationName = LAUNCH_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final LaunchArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Launch$Query parse(Map<String, dynamic> json) => Launch$Query.fromJson(json);
}
