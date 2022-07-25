import 'package:my_doc_app_for_patients/features/auth/data/models/user_model.dart';
import 'package:my_doc_app_for_patients/features/auth/domain/entities/user_entity.dart';

extension UserEntityMapper on UserModel {
  UserEntity toEntity() => UserEntity(userId);
}
