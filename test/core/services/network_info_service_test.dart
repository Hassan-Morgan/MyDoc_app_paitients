import 'package:flutter_test/flutter_test.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_doc_app_for_patients/core/services/network_info_service.dart';

import 'network_info_service_test.mocks.dart';


@GenerateMocks([InternetConnectionChecker])
void main() {
  late MockInternetConnectionChecker internetConnectionChecker;
  late NetworkInfo networkInfo;

  setUp(() {
    internetConnectionChecker = MockInternetConnectionChecker();
    networkInfo = NetworkInfoImpl(internetConnectionChecker);
  });

  const testConnectionValue = true;

  test(
      '''should call the internetConnectionChecker().hasConnection when call the getCurrentConnectionState and 
      and return the value returned from internetConnectionChecker().hasConnection function
      ''',
      () async {
    when(internetConnectionChecker.hasConnection)
        .thenAnswer((realInvocation)async => testConnectionValue);
    final result = await networkInfo.getCurrentConnectionState;
    expect(result, testConnectionValue);
    verify(internetConnectionChecker.hasConnection).called(1);
  });
}