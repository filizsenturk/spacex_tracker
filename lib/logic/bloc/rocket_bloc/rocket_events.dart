part of 'rocket_bloc.dart';

@immutable
abstract class RocketEvents{}

class RocketSelected extends RocketEvents{}

class RocketNotSelected extends RocketEvents{}