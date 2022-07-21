import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  HiveInterface get hive => Hive;
}
