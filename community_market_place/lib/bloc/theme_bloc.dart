import 'dart:async';

import 'package:communitymarketplace/themes/design_theme.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class CurrentTheme {
  final String name;
  final ThemeData data;

  const CurrentTheme(this.name, this.data);
}

class ThemeBloc {
  final Stream<ThemeData> themeDataStream;
  final Sink<CurrentTheme> selectedTheme;

  factory ThemeBloc() {
    final selectedTheme = PublishSubject<CurrentTheme>();
    final themeDataStream = selectedTheme.distinct().map((theme) => theme.data);
    return ThemeBloc._(themeDataStream, selectedTheme);
  }

  const ThemeBloc._(this.themeDataStream, this.selectedTheme);

  CurrentTheme initialTheme() {
    return CurrentTheme('initial', DesignTheme.lightThemeData);
  }
}
