import 'package:equatable/equatable.dart';

class AppLanguageModel extends Equatable {
  final String appLanguage;

  const AppLanguageModel(this.appLanguage);

  factory AppLanguageModel.fromString(String language) {
    return AppLanguageModel(language);
  }

  @override
  List<Object?> get props => [appLanguage];
}
