import '../../domain/entities/app_theme_entity.dart';
import '../models/app_theme_model.dart';

extension AppThemeMapper on AppThemeModel {
  AppThemeEntity toEntity() => AppThemeEntity(appTheme);
}
