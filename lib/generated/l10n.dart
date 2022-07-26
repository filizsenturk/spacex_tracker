// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `English`
  String get language {
    return Intl.message(
      'English',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Home Screen`
  String get homeScreen {
    return Intl.message(
      'Home Screen',
      name: 'homeScreen',
      desc: '',
      args: [],
    );
  }

  /// `Missions`
  String get missions {
    return Intl.message(
      'Missions',
      name: 'missions',
      desc: '',
      args: [],
    );
  }

  /// `Server Error`
  String get serverError {
    return Intl.message(
      'Server Error',
      name: 'serverError',
      desc: '',
      args: [],
    );
  }

  /// `active`
  String get active {
    return Intl.message(
      'active',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `inactive`
  String get inactive {
    return Intl.message(
      'inactive',
      name: 'inactive',
      desc: '',
      args: [],
    );
  }

  /// `more info`
  String get moreInfo {
    return Intl.message(
      'more info',
      name: 'moreInfo',
      desc: '',
      args: [],
    );
  }

  /// `Rocket Name`
  String get rocketName {
    return Intl.message(
      'Rocket Name',
      name: 'rocketName',
      desc: '',
      args: [],
    );
  }

  /// `Success Rate`
  String get successRate {
    return Intl.message(
      'Success Rate',
      name: 'successRate',
      desc: '',
      args: [],
    );
  }

  /// `Boosters`
  String get boosters {
    return Intl.message(
      'Boosters',
      name: 'boosters',
      desc: '',
      args: [],
    );
  }

  /// `Engine`
  String get engine {
    return Intl.message(
      'Engine',
      name: 'engine',
      desc: '',
      args: [],
    );
  }

  /// `Cost Per Lunch`
  String get costPerLunch {
    return Intl.message(
      'Cost Per Lunch',
      name: 'costPerLunch',
      desc: '',
      args: [],
    );
  }

  /// `Reuseable`
  String get reUseable {
    return Intl.message(
      'Reuseable',
      name: 'reUseable',
      desc: '',
      args: [],
    );
  }

  /// `Landing Legs Material`
  String get landingLegsMaterial {
    return Intl.message(
      'Landing Legs Material',
      name: 'landingLegsMaterial',
      desc: '',
      args: [],
    );
  }

  /// `Landing Legs Number`
  String get landingLegsNumber {
    return Intl.message(
      'Landing Legs Number',
      name: 'landingLegsNumber',
      desc: '',
      args: [],
    );
  }

  /// `First Flight`
  String get firstFlight {
    return Intl.message(
      'First Flight',
      name: 'firstFlight',
      desc: '',
      args: [],
    );
  }

  /// `Launches`
  String get launches {
    return Intl.message(
      'Launches',
      name: 'launches',
      desc: '',
      args: [],
    );
  }

  /// `Landings`
  String get landings {
    return Intl.message(
      'Landings',
      name: 'landings',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Payload`
  String get payloadInfo {
    return Intl.message(
      'Payload',
      name: 'payloadInfo',
      desc: '',
      args: [],
    );
  }

  /// `Mission name`
  String get missionName {
    return Intl.message(
      'Mission name',
      name: 'missionName',
      desc: '',
      args: [],
    );
  }

  /// `Manufacturers`
  String get manufacturers {
    return Intl.message(
      'Manufacturers',
      name: 'manufacturers',
      desc: '',
      args: [],
    );
  }

  /// `Website`
  String get website {
    return Intl.message(
      'Website',
      name: 'website',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `true`
  String get trueValue {
    return Intl.message(
      'true',
      name: 'trueValue',
      desc: '',
      args: [],
    );
  }

  /// `false`
  String get falseValue {
    return Intl.message(
      'false',
      name: 'falseValue',
      desc: '',
      args: [],
    );
  }

  /// `Ship Name`
  String get shipName {
    return Intl.message(
      'Ship Name',
      name: 'shipName',
      desc: '',
      args: [],
    );
  }

  /// `Ship Model`
  String get shipModel {
    return Intl.message(
      'Ship Model',
      name: 'shipModel',
      desc: '',
      args: [],
    );
  }

  /// `Build Year`
  String get buildYear {
    return Intl.message(
      'Build Year',
      name: 'buildYear',
      desc: '',
      args: [],
    );
  }

  /// `Roles`
  String get roles {
    return Intl.message(
      'Roles',
      name: 'roles',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Used for mission`
  String get usedForMission {
    return Intl.message(
      'Used for mission',
      name: 'usedForMission',
      desc: '',
      args: [],
    );
  }

  /// `Succesful landings`
  String get succesfulLandings {
    return Intl.message(
      'Succesful landings',
      name: 'succesfulLandings',
      desc: '',
      args: [],
    );
  }

  /// `Rocket Type`
  String get rocketType {
    return Intl.message(
      'Rocket Type',
      name: 'rocketType',
      desc: '',
      args: [],
    );
  }

  /// `SpaceX History`
  String get spacexHistory {
    return Intl.message(
      'SpaceX History',
      name: 'spacexHistory',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get succes {
    return Intl.message(
      'Success',
      name: 'succes',
      desc: '',
      args: [],
    );
  }

  /// `Failed`
  String get failed {
    return Intl.message(
      'Failed',
      name: 'failed',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get unknown {
    return Intl.message(
      'Unknown',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'tr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
