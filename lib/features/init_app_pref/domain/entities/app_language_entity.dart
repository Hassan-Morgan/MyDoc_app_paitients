import 'package:equatable/equatable.dart';

class AppLanguageEntity extends Equatable {
  final String appLangauge;
  const AppLanguageEntity(this.appLangauge);

  @override
  List<Object?> get props => [appLangauge];
}
