// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CashExceptions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noDataException,
    required TResult Function() unImplementedException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noDataException,
    TResult Function()? unImplementedException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noDataException,
    TResult Function()? unImplementedException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoDataException value) noDataException,
    required TResult Function(UnImplementedException value)
        unImplementedException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoDataException value)? noDataException,
    TResult Function(UnImplementedException value)? unImplementedException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoDataException value)? noDataException,
    TResult Function(UnImplementedException value)? unImplementedException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashExceptionsCopyWith<$Res> {
  factory $CashExceptionsCopyWith(
          CashExceptions value, $Res Function(CashExceptions) then) =
      _$CashExceptionsCopyWithImpl<$Res>;
}

/// @nodoc
class _$CashExceptionsCopyWithImpl<$Res>
    implements $CashExceptionsCopyWith<$Res> {
  _$CashExceptionsCopyWithImpl(this._value, this._then);

  final CashExceptions _value;
  // ignore: unused_field
  final $Res Function(CashExceptions) _then;
}

/// @nodoc
abstract class _$$NoDataExceptionCopyWith<$Res> {
  factory _$$NoDataExceptionCopyWith(
          _$NoDataException value, $Res Function(_$NoDataException) then) =
      __$$NoDataExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoDataExceptionCopyWithImpl<$Res>
    extends _$CashExceptionsCopyWithImpl<$Res>
    implements _$$NoDataExceptionCopyWith<$Res> {
  __$$NoDataExceptionCopyWithImpl(
      _$NoDataException _value, $Res Function(_$NoDataException) _then)
      : super(_value, (v) => _then(v as _$NoDataException));

  @override
  _$NoDataException get _value => super._value as _$NoDataException;
}

/// @nodoc

class _$NoDataException implements NoDataException {
  const _$NoDataException();

  @override
  String toString() {
    return 'CashExceptions.noDataException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoDataException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noDataException,
    required TResult Function() unImplementedException,
  }) {
    return noDataException();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noDataException,
    TResult Function()? unImplementedException,
  }) {
    return noDataException?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noDataException,
    TResult Function()? unImplementedException,
    required TResult orElse(),
  }) {
    if (noDataException != null) {
      return noDataException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoDataException value) noDataException,
    required TResult Function(UnImplementedException value)
        unImplementedException,
  }) {
    return noDataException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoDataException value)? noDataException,
    TResult Function(UnImplementedException value)? unImplementedException,
  }) {
    return noDataException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoDataException value)? noDataException,
    TResult Function(UnImplementedException value)? unImplementedException,
    required TResult orElse(),
  }) {
    if (noDataException != null) {
      return noDataException(this);
    }
    return orElse();
  }
}

abstract class NoDataException implements CashExceptions {
  const factory NoDataException() = _$NoDataException;
}

/// @nodoc
abstract class _$$UnImplementedExceptionCopyWith<$Res> {
  factory _$$UnImplementedExceptionCopyWith(_$UnImplementedException value,
          $Res Function(_$UnImplementedException) then) =
      __$$UnImplementedExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnImplementedExceptionCopyWithImpl<$Res>
    extends _$CashExceptionsCopyWithImpl<$Res>
    implements _$$UnImplementedExceptionCopyWith<$Res> {
  __$$UnImplementedExceptionCopyWithImpl(_$UnImplementedException _value,
      $Res Function(_$UnImplementedException) _then)
      : super(_value, (v) => _then(v as _$UnImplementedException));

  @override
  _$UnImplementedException get _value =>
      super._value as _$UnImplementedException;
}

/// @nodoc

class _$UnImplementedException implements UnImplementedException {
  const _$UnImplementedException();

  @override
  String toString() {
    return 'CashExceptions.unImplementedException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnImplementedException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noDataException,
    required TResult Function() unImplementedException,
  }) {
    return unImplementedException();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noDataException,
    TResult Function()? unImplementedException,
  }) {
    return unImplementedException?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noDataException,
    TResult Function()? unImplementedException,
    required TResult orElse(),
  }) {
    if (unImplementedException != null) {
      return unImplementedException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoDataException value) noDataException,
    required TResult Function(UnImplementedException value)
        unImplementedException,
  }) {
    return unImplementedException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoDataException value)? noDataException,
    TResult Function(UnImplementedException value)? unImplementedException,
  }) {
    return unImplementedException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoDataException value)? noDataException,
    TResult Function(UnImplementedException value)? unImplementedException,
    required TResult orElse(),
  }) {
    if (unImplementedException != null) {
      return unImplementedException(this);
    }
    return orElse();
  }
}

abstract class UnImplementedException implements CashExceptions {
  const factory UnImplementedException() = _$UnImplementedException;
}
