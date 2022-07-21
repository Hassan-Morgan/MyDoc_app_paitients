
import 'package:my_doc_app_for_patients/features/init_app_pref/domain/entities/app_language_entity.dart';

import '../models/app_language_model.dart';


extension AppLangauageMapper on AppLanguageModel {
  AppLanguageEntity toEntity() => AppLanguageEntity(appLanguage);
}
