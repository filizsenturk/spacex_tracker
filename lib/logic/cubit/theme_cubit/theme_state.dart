part of 'theme_cubit.dart';

abstract class AppThemeState {
  final ThemeData theme;

  AppThemeState({required this.theme});
}

class LightThemeState extends AppThemeState {
  static final state = AppTheme.light();
  LightThemeState() : super(theme: state);
}

class DarkThemeState extends AppThemeState {
  static final state = AppTheme.dark();
  DarkThemeState() : super(theme: state);
}