import 'package:equatable/equatable.dart';

class EmailAndPasswordParams extends Equatable {
  final String email;
  final String password;

  const EmailAndPasswordParams(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}
