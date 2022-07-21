import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AppThemeEntity extends Equatable {
  final ThemeMode appTheme;
  const AppThemeEntity(this.appTheme);
  
  @override
  List<Object?> get props => [appTheme];
}
