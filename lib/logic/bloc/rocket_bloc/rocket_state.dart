part of 'rocket_bloc.dart';

@immutable
abstract class RocketState{}

class RocketLoading extends RocketState{}

class RocketFetchedSuccessfully extends RocketState{
  final Map<String,dynamic>? rocketMap;

  RocketFetchedSuccessfully({required this.rocketMap});
}

class NoRocketDetailNeeded extends RocketState{}

class RocketError extends RocketState{
  final Object error;

  RocketError({required this.error});
}