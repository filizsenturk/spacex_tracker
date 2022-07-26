import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_tracker/utilities/app_theme.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<AppThemeState> {
  ThemeCubit() : super(LightThemeState());

  toggleDarkMode() {
    if (state is LightThemeState) {
      emit(DarkThemeState());
    } else {
      emit(LightThemeState());
    }
  }
}
