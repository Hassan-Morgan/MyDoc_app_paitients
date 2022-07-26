import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get getCurrentConnectionState;
}

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  InternetConnectionChecker internetConnectionChecker;

  NetworkInfoImpl(this.internetConnectionChecker);

  @override
  Future<bool> get getCurrentConnectionState =>
      internetConnectionChecker.hasConnection;
}