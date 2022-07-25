import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends Equatable {
  late String userId;
  String? email;
  String? phoneNumber;
  String? userName;

  UserModel({
    required this.userId,
    required this.email,
    required this.phoneNumber,
    required this.userName,
  });

  UserModel.fromUser(User user) {
    userId = user.uid;
    email = user.email;
    phoneNumber = user.phoneNumber;
    userName = user.displayName;
  }

  UserModel.fromMap(Map map) {
    userId = map['user_id'];
    phoneNumber = map['phone_number'];
    userName = map['user_name'];
    email = map['email'];
  }

  Map<String, dynamic> toMap() => {
        'user_id': userId,
        'phone_number': phoneNumber,
        'user_name': userName,
        'email': email,
      };

  @override
  List<Object?> get props => [userId];
}
