import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String userId;

  const UserEntity(this.userId);

  @override
  List<Object?> get props => [userId];
}
