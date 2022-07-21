import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exceptions.freezed.dart';

@freezed
class CashExceptions with _$CashExceptions  {
  const factory CashExceptions.noDataException() = NoDataException;
  const factory CashExceptions.unImplementedException() =
      UnImplementedException;
}
