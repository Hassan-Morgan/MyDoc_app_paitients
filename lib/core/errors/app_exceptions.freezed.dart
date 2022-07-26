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
    required TResult Function(_NoDataException value) noDataException,
    required TResult Function(_UnImplementedException value)
        unImplementedException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoDataException value)? noDataException,
    TResult Function(_UnImplementedException value)? unImplementedException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoDataException value)? noDataException,
    TResult Function(_UnImplementedException value)? unImplementedException,
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
abstract class _$$_NoDataExceptionCopyWith<$Res> {
  factory _$$_NoDataExceptionCopyWith(
          _$_NoDataException value, $Res Function(_$_NoDataException) then) =
      __$$_NoDataExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoDataExceptionCopyWithImpl<$Res>
    extends _$CashExceptionsCopyWithImpl<$Res>
    implements _$$_NoDataExceptionCopyWith<$Res> {
  __$$_NoDataExceptionCopyWithImpl(
      _$_NoDataException _value, $Res Function(_$_NoDataException) _then)
      : super(_value, (v) => _then(v as _$_NoDataException));

  @override
  _$_NoDataException get _value => super._value as _$_NoDataException;
}

/// @nodoc

class _$_NoDataException implements _NoDataException {
  const _$_NoDataException();

  @override
  String toString() {
    return 'CashExceptions.noDataException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoDataException);
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
    required TResult Function(_NoDataException value) noDataException,
    required TResult Function(_UnImplementedException value)
        unImplementedException,
  }) {
    return noDataException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoDataException value)? noDataException,
    TResult Function(_UnImplementedException value)? unImplementedException,
  }) {
    return noDataException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoDataException value)? noDataException,
    TResult Function(_UnImplementedException value)? unImplementedException,
    required TResult orElse(),
  }) {
    if (noDataException != null) {
      return noDataException(this);
    }
    return orElse();
  }
}

abstract class _NoDataException implements CashExceptions {
  const factory _NoDataException() = _$_NoDataException;
}

/// @nodoc
abstract class _$$_UnImplementedExceptionCopyWith<$Res> {
  factory _$$_UnImplementedExceptionCopyWith(_$_UnImplementedException value,
          $Res Function(_$_UnImplementedException) then) =
      __$$_UnImplementedExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnImplementedExceptionCopyWithImpl<$Res>
    extends _$CashExceptionsCopyWithImpl<$Res>
    implements _$$_UnImplementedExceptionCopyWith<$Res> {
  __$$_UnImplementedExceptionCopyWithImpl(_$_UnImplementedException _value,
      $Res Function(_$_UnImplementedException) _then)
      : super(_value, (v) => _then(v as _$_UnImplementedException));

  @override
  _$_UnImplementedException get _value =>
      super._value as _$_UnImplementedException;
}

/// @nodoc

class _$_UnImplementedException implements _UnImplementedException {
  const _$_UnImplementedException();

  @override
  String toString() {
    return 'CashExceptions.unImplementedException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnImplementedException);
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
    required TResult Function(_NoDataException value) noDataException,
    required TResult Function(_UnImplementedException value)
        unImplementedException,
  }) {
    return unImplementedException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoDataException value)? noDataException,
    TResult Function(_UnImplementedException value)? unImplementedException,
  }) {
    return unImplementedException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoDataException value)? noDataException,
    TResult Function(_UnImplementedException value)? unImplementedException,
    required TResult orElse(),
  }) {
    if (unImplementedException != null) {
      return unImplementedException(this);
    }
    return orElse();
  }
}

abstract class _UnImplementedException implements CashExceptions {
  const factory _UnImplementedException() = _$_UnImplementedException;
}

/// @nodoc
mixin _$AuthExceptions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() incorrectEmailOrPassword,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() canceledByUser,
    required TResult Function() wrongEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? incorrectEmailOrPassword,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? canceledByUser,
    TResult Function()? wrongEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? incorrectEmailOrPassword,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? canceledByUser,
    TResult Function()? wrongEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthServerException value) serverException,
    required TResult Function(_IncorrectEmailOrPassword value)
        incorrectEmailOrPassword,
    required TResult Function(_EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(_CanceledByUser value) canceledByUser,
    required TResult Function(_wrongEmail value) wrongEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthServerException value)? serverException,
    TResult Function(_IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(_EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(_CanceledByUser value)? canceledByUser,
    TResult Function(_wrongEmail value)? wrongEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthServerException value)? serverException,
    TResult Function(_IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(_EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(_CanceledByUser value)? canceledByUser,
    TResult Function(_wrongEmail value)? wrongEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthExceptionsCopyWith<$Res> {
  factory $AuthExceptionsCopyWith(
          AuthExceptions value, $Res Function(AuthExceptions) then) =
      _$AuthExceptionsCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthExceptionsCopyWithImpl<$Res>
    implements $AuthExceptionsCopyWith<$Res> {
  _$AuthExceptionsCopyWithImpl(this._value, this._then);

  final AuthExceptions _value;
  // ignore: unused_field
  final $Res Function(AuthExceptions) _then;
}

/// @nodoc
abstract class _$$_AuthServerExceptionCopyWith<$Res> {
  factory _$$_AuthServerExceptionCopyWith(_$_AuthServerException value,
          $Res Function(_$_AuthServerException) then) =
      __$$_AuthServerExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthServerExceptionCopyWithImpl<$Res>
    extends _$AuthExceptionsCopyWithImpl<$Res>
    implements _$$_AuthServerExceptionCopyWith<$Res> {
  __$$_AuthServerExceptionCopyWithImpl(_$_AuthServerException _value,
      $Res Function(_$_AuthServerException) _then)
      : super(_value, (v) => _then(v as _$_AuthServerException));

  @override
  _$_AuthServerException get _value => super._value as _$_AuthServerException;
}

/// @nodoc

class _$_AuthServerException implements _AuthServerException {
  const _$_AuthServerException();

  @override
  String toString() {
    return 'AuthExceptions.serverException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthServerException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() incorrectEmailOrPassword,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() canceledByUser,
    required TResult Function() wrongEmail,
  }) {
    return serverException();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? incorrectEmailOrPassword,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? canceledByUser,
    TResult Function()? wrongEmail,
  }) {
    return serverException?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? incorrectEmailOrPassword,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? canceledByUser,
    TResult Function()? wrongEmail,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthServerException value) serverException,
    required TResult Function(_IncorrectEmailOrPassword value)
        incorrectEmailOrPassword,
    required TResult Function(_EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(_CanceledByUser value) canceledByUser,
    required TResult Function(_wrongEmail value) wrongEmail,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthServerException value)? serverException,
    TResult Function(_IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(_EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(_CanceledByUser value)? canceledByUser,
    TResult Function(_wrongEmail value)? wrongEmail,
  }) {
    return serverException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthServerException value)? serverException,
    TResult Function(_IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(_EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(_CanceledByUser value)? canceledByUser,
    TResult Function(_wrongEmail value)? wrongEmail,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class _AuthServerException implements AuthExceptions {
  const factory _AuthServerException() = _$_AuthServerException;
}

/// @nodoc
abstract class _$$_IncorrectEmailOrPasswordCopyWith<$Res> {
  factory _$$_IncorrectEmailOrPasswordCopyWith(
          _$_IncorrectEmailOrPassword value,
          $Res Function(_$_IncorrectEmailOrPassword) then) =
      __$$_IncorrectEmailOrPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IncorrectEmailOrPasswordCopyWithImpl<$Res>
    extends _$AuthExceptionsCopyWithImpl<$Res>
    implements _$$_IncorrectEmailOrPasswordCopyWith<$Res> {
  __$$_IncorrectEmailOrPasswordCopyWithImpl(_$_IncorrectEmailOrPassword _value,
      $Res Function(_$_IncorrectEmailOrPassword) _then)
      : super(_value, (v) => _then(v as _$_IncorrectEmailOrPassword));

  @override
  _$_IncorrectEmailOrPassword get _value =>
      super._value as _$_IncorrectEmailOrPassword;
}

/// @nodoc

class _$_IncorrectEmailOrPassword implements _IncorrectEmailOrPassword {
  const _$_IncorrectEmailOrPassword();

  @override
  String toString() {
    return 'AuthExceptions.incorrectEmailOrPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncorrectEmailOrPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() incorrectEmailOrPassword,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() canceledByUser,
    required TResult Function() wrongEmail,
  }) {
    return incorrectEmailOrPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? incorrectEmailOrPassword,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? canceledByUser,
    TResult Function()? wrongEmail,
  }) {
    return incorrectEmailOrPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? incorrectEmailOrPassword,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? canceledByUser,
    TResult Function()? wrongEmail,
    required TResult orElse(),
  }) {
    if (incorrectEmailOrPassword != null) {
      return incorrectEmailOrPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthServerException value) serverException,
    required TResult Function(_IncorrectEmailOrPassword value)
        incorrectEmailOrPassword,
    required TResult Function(_EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(_CanceledByUser value) canceledByUser,
    required TResult Function(_wrongEmail value) wrongEmail,
  }) {
    return incorrectEmailOrPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthServerException value)? serverException,
    TResult Function(_IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(_EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(_CanceledByUser value)? canceledByUser,
    TResult Function(_wrongEmail value)? wrongEmail,
  }) {
    return incorrectEmailOrPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthServerException value)? serverException,
    TResult Function(_IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(_EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(_CanceledByUser value)? canceledByUser,
    TResult Function(_wrongEmail value)? wrongEmail,
    required TResult orElse(),
  }) {
    if (incorrectEmailOrPassword != null) {
      return incorrectEmailOrPassword(this);
    }
    return orElse();
  }
}

abstract class _IncorrectEmailOrPassword implements AuthExceptions {
  const factory _IncorrectEmailOrPassword() = _$_IncorrectEmailOrPassword;
}

/// @nodoc
abstract class _$$_EmailAlreadyRegisteredCopyWith<$Res> {
  factory _$$_EmailAlreadyRegisteredCopyWith(_$_EmailAlreadyRegistered value,
          $Res Function(_$_EmailAlreadyRegistered) then) =
      __$$_EmailAlreadyRegisteredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmailAlreadyRegisteredCopyWithImpl<$Res>
    extends _$AuthExceptionsCopyWithImpl<$Res>
    implements _$$_EmailAlreadyRegisteredCopyWith<$Res> {
  __$$_EmailAlreadyRegisteredCopyWithImpl(_$_EmailAlreadyRegistered _value,
      $Res Function(_$_EmailAlreadyRegistered) _then)
      : super(_value, (v) => _then(v as _$_EmailAlreadyRegistered));

  @override
  _$_EmailAlreadyRegistered get _value =>
      super._value as _$_EmailAlreadyRegistered;
}

/// @nodoc

class _$_EmailAlreadyRegistered implements _EmailAlreadyRegistered {
  const _$_EmailAlreadyRegistered();

  @override
  String toString() {
    return 'AuthExceptions.emailAlreadyRegistered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailAlreadyRegistered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() incorrectEmailOrPassword,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() canceledByUser,
    required TResult Function() wrongEmail,
  }) {
    return emailAlreadyRegistered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? incorrectEmailOrPassword,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? canceledByUser,
    TResult Function()? wrongEmail,
  }) {
    return emailAlreadyRegistered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? incorrectEmailOrPassword,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? canceledByUser,
    TResult Function()? wrongEmail,
    required TResult orElse(),
  }) {
    if (emailAlreadyRegistered != null) {
      return emailAlreadyRegistered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthServerException value) serverException,
    required TResult Function(_IncorrectEmailOrPassword value)
        incorrectEmailOrPassword,
    required TResult Function(_EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(_CanceledByUser value) canceledByUser,
    required TResult Function(_wrongEmail value) wrongEmail,
  }) {
    return emailAlreadyRegistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthServerException value)? serverException,
    TResult Function(_IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(_EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(_CanceledByUser value)? canceledByUser,
    TResult Function(_wrongEmail value)? wrongEmail,
  }) {
    return emailAlreadyRegistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthServerException value)? serverException,
    TResult Function(_IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(_EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(_CanceledByUser value)? canceledByUser,
    TResult Function(_wrongEmail value)? wrongEmail,
    required TResult orElse(),
  }) {
    if (emailAlreadyRegistered != null) {
      return emailAlreadyRegistered(this);
    }
    return orElse();
  }
}

abstract class _EmailAlreadyRegistered implements AuthExceptions {
  const factory _EmailAlreadyRegistered() = _$_EmailAlreadyRegistered;
}

/// @nodoc
abstract class _$$_CanceledByUserCopyWith<$Res> {
  factory _$$_CanceledByUserCopyWith(
          _$_CanceledByUser value, $Res Function(_$_CanceledByUser) then) =
      __$$_CanceledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CanceledByUserCopyWithImpl<$Res>
    extends _$AuthExceptionsCopyWithImpl<$Res>
    implements _$$_CanceledByUserCopyWith<$Res> {
  __$$_CanceledByUserCopyWithImpl(
      _$_CanceledByUser _value, $Res Function(_$_CanceledByUser) _then)
      : super(_value, (v) => _then(v as _$_CanceledByUser));

  @override
  _$_CanceledByUser get _value => super._value as _$_CanceledByUser;
}

/// @nodoc

class _$_CanceledByUser implements _CanceledByUser {
  const _$_CanceledByUser();

  @override
  String toString() {
    return 'AuthExceptions.canceledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CanceledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() incorrectEmailOrPassword,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() canceledByUser,
    required TResult Function() wrongEmail,
  }) {
    return canceledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? incorrectEmailOrPassword,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? canceledByUser,
    TResult Function()? wrongEmail,
  }) {
    return canceledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? incorrectEmailOrPassword,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? canceledByUser,
    TResult Function()? wrongEmail,
    required TResult orElse(),
  }) {
    if (canceledByUser != null) {
      return canceledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthServerException value) serverException,
    required TResult Function(_IncorrectEmailOrPassword value)
        incorrectEmailOrPassword,
    required TResult Function(_EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(_CanceledByUser value) canceledByUser,
    required TResult Function(_wrongEmail value) wrongEmail,
  }) {
    return canceledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthServerException value)? serverException,
    TResult Function(_IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(_EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(_CanceledByUser value)? canceledByUser,
    TResult Function(_wrongEmail value)? wrongEmail,
  }) {
    return canceledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthServerException value)? serverException,
    TResult Function(_IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(_EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(_CanceledByUser value)? canceledByUser,
    TResult Function(_wrongEmail value)? wrongEmail,
    required TResult orElse(),
  }) {
    if (canceledByUser != null) {
      return canceledByUser(this);
    }
    return orElse();
  }
}

abstract class _CanceledByUser implements AuthExceptions {
  const factory _CanceledByUser() = _$_CanceledByUser;
}

/// @nodoc
abstract class _$$_wrongEmailCopyWith<$Res> {
  factory _$$_wrongEmailCopyWith(
          _$_wrongEmail value, $Res Function(_$_wrongEmail) then) =
      __$$_wrongEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_wrongEmailCopyWithImpl<$Res>
    extends _$AuthExceptionsCopyWithImpl<$Res>
    implements _$$_wrongEmailCopyWith<$Res> {
  __$$_wrongEmailCopyWithImpl(
      _$_wrongEmail _value, $Res Function(_$_wrongEmail) _then)
      : super(_value, (v) => _then(v as _$_wrongEmail));

  @override
  _$_wrongEmail get _value => super._value as _$_wrongEmail;
}

/// @nodoc

class _$_wrongEmail implements _wrongEmail {
  const _$_wrongEmail();

  @override
  String toString() {
    return 'AuthExceptions.wrongEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_wrongEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() incorrectEmailOrPassword,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() canceledByUser,
    required TResult Function() wrongEmail,
  }) {
    return wrongEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? incorrectEmailOrPassword,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? canceledByUser,
    TResult Function()? wrongEmail,
  }) {
    return wrongEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? incorrectEmailOrPassword,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? canceledByUser,
    TResult Function()? wrongEmail,
    required TResult orElse(),
  }) {
    if (wrongEmail != null) {
      return wrongEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthServerException value) serverException,
    required TResult Function(_IncorrectEmailOrPassword value)
        incorrectEmailOrPassword,
    required TResult Function(_EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(_CanceledByUser value) canceledByUser,
    required TResult Function(_wrongEmail value) wrongEmail,
  }) {
    return wrongEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthServerException value)? serverException,
    TResult Function(_IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(_EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(_CanceledByUser value)? canceledByUser,
    TResult Function(_wrongEmail value)? wrongEmail,
  }) {
    return wrongEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthServerException value)? serverException,
    TResult Function(_IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(_EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(_CanceledByUser value)? canceledByUser,
    TResult Function(_wrongEmail value)? wrongEmail,
    required TResult orElse(),
  }) {
    if (wrongEmail != null) {
      return wrongEmail(this);
    }
    return orElse();
  }
}

abstract class _wrongEmail implements AuthExceptions {
  const factory _wrongEmail() = _$_wrongEmail;
}

/// @nodoc
mixin _$CurrentUserException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noCurrentUser,
    required TResult Function() unverifiedEmail,
    required TResult Function() cashError,
    required TResult Function() serverError,
    required TResult Function() uncompletedAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noCurrentUser,
    TResult Function()? unverifiedEmail,
    TResult Function()? cashError,
    TResult Function()? serverError,
    TResult Function()? uncompletedAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noCurrentUser,
    TResult Function()? unverifiedEmail,
    TResult Function()? cashError,
    TResult Function()? serverError,
    TResult Function()? uncompletedAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NocurrentUser value) noCurrentUser,
    required TResult Function(_UnverifiedEmail value) unverifiedEmail,
    required TResult Function(_CashError value) cashError,
    required TResult Function(_CurrentUserServerError value) serverError,
    required TResult Function(_UncompletedAccount value) uncompletedAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NocurrentUser value)? noCurrentUser,
    TResult Function(_UnverifiedEmail value)? unverifiedEmail,
    TResult Function(_CashError value)? cashError,
    TResult Function(_CurrentUserServerError value)? serverError,
    TResult Function(_UncompletedAccount value)? uncompletedAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NocurrentUser value)? noCurrentUser,
    TResult Function(_UnverifiedEmail value)? unverifiedEmail,
    TResult Function(_CashError value)? cashError,
    TResult Function(_CurrentUserServerError value)? serverError,
    TResult Function(_UncompletedAccount value)? uncompletedAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentUserExceptionCopyWith<$Res> {
  factory $CurrentUserExceptionCopyWith(CurrentUserException value,
          $Res Function(CurrentUserException) then) =
      _$CurrentUserExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrentUserExceptionCopyWithImpl<$Res>
    implements $CurrentUserExceptionCopyWith<$Res> {
  _$CurrentUserExceptionCopyWithImpl(this._value, this._then);

  final CurrentUserException _value;
  // ignore: unused_field
  final $Res Function(CurrentUserException) _then;
}

/// @nodoc
abstract class _$$_NocurrentUserCopyWith<$Res> {
  factory _$$_NocurrentUserCopyWith(
          _$_NocurrentUser value, $Res Function(_$_NocurrentUser) then) =
      __$$_NocurrentUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NocurrentUserCopyWithImpl<$Res>
    extends _$CurrentUserExceptionCopyWithImpl<$Res>
    implements _$$_NocurrentUserCopyWith<$Res> {
  __$$_NocurrentUserCopyWithImpl(
      _$_NocurrentUser _value, $Res Function(_$_NocurrentUser) _then)
      : super(_value, (v) => _then(v as _$_NocurrentUser));

  @override
  _$_NocurrentUser get _value => super._value as _$_NocurrentUser;
}

/// @nodoc

class _$_NocurrentUser implements _NocurrentUser {
  const _$_NocurrentUser();

  @override
  String toString() {
    return 'CurrentUserException.noCurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NocurrentUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noCurrentUser,
    required TResult Function() unverifiedEmail,
    required TResult Function() cashError,
    required TResult Function() serverError,
    required TResult Function() uncompletedAccount,
  }) {
    return noCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noCurrentUser,
    TResult Function()? unverifiedEmail,
    TResult Function()? cashError,
    TResult Function()? serverError,
    TResult Function()? uncompletedAccount,
  }) {
    return noCurrentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noCurrentUser,
    TResult Function()? unverifiedEmail,
    TResult Function()? cashError,
    TResult Function()? serverError,
    TResult Function()? uncompletedAccount,
    required TResult orElse(),
  }) {
    if (noCurrentUser != null) {
      return noCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NocurrentUser value) noCurrentUser,
    required TResult Function(_UnverifiedEmail value) unverifiedEmail,
    required TResult Function(_CashError value) cashError,
    required TResult Function(_CurrentUserServerError value) serverError,
    required TResult Function(_UncompletedAccount value) uncompletedAccount,
  }) {
    return noCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NocurrentUser value)? noCurrentUser,
    TResult Function(_UnverifiedEmail value)? unverifiedEmail,
    TResult Function(_CashError value)? cashError,
    TResult Function(_CurrentUserServerError value)? serverError,
    TResult Function(_UncompletedAccount value)? uncompletedAccount,
  }) {
    return noCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NocurrentUser value)? noCurrentUser,
    TResult Function(_UnverifiedEmail value)? unverifiedEmail,
    TResult Function(_CashError value)? cashError,
    TResult Function(_CurrentUserServerError value)? serverError,
    TResult Function(_UncompletedAccount value)? uncompletedAccount,
    required TResult orElse(),
  }) {
    if (noCurrentUser != null) {
      return noCurrentUser(this);
    }
    return orElse();
  }
}

abstract class _NocurrentUser implements CurrentUserException {
  const factory _NocurrentUser() = _$_NocurrentUser;
}

/// @nodoc
abstract class _$$_UnverifiedEmailCopyWith<$Res> {
  factory _$$_UnverifiedEmailCopyWith(
          _$_UnverifiedEmail value, $Res Function(_$_UnverifiedEmail) then) =
      __$$_UnverifiedEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnverifiedEmailCopyWithImpl<$Res>
    extends _$CurrentUserExceptionCopyWithImpl<$Res>
    implements _$$_UnverifiedEmailCopyWith<$Res> {
  __$$_UnverifiedEmailCopyWithImpl(
      _$_UnverifiedEmail _value, $Res Function(_$_UnverifiedEmail) _then)
      : super(_value, (v) => _then(v as _$_UnverifiedEmail));

  @override
  _$_UnverifiedEmail get _value => super._value as _$_UnverifiedEmail;
}

/// @nodoc

class _$_UnverifiedEmail implements _UnverifiedEmail {
  const _$_UnverifiedEmail();

  @override
  String toString() {
    return 'CurrentUserException.unverifiedEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnverifiedEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noCurrentUser,
    required TResult Function() unverifiedEmail,
    required TResult Function() cashError,
    required TResult Function() serverError,
    required TResult Function() uncompletedAccount,
  }) {
    return unverifiedEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noCurrentUser,
    TResult Function()? unverifiedEmail,
    TResult Function()? cashError,
    TResult Function()? serverError,
    TResult Function()? uncompletedAccount,
  }) {
    return unverifiedEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noCurrentUser,
    TResult Function()? unverifiedEmail,
    TResult Function()? cashError,
    TResult Function()? serverError,
    TResult Function()? uncompletedAccount,
    required TResult orElse(),
  }) {
    if (unverifiedEmail != null) {
      return unverifiedEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NocurrentUser value) noCurrentUser,
    required TResult Function(_UnverifiedEmail value) unverifiedEmail,
    required TResult Function(_CashError value) cashError,
    required TResult Function(_CurrentUserServerError value) serverError,
    required TResult Function(_UncompletedAccount value) uncompletedAccount,
  }) {
    return unverifiedEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NocurrentUser value)? noCurrentUser,
    TResult Function(_UnverifiedEmail value)? unverifiedEmail,
    TResult Function(_CashError value)? cashError,
    TResult Function(_CurrentUserServerError value)? serverError,
    TResult Function(_UncompletedAccount value)? uncompletedAccount,
  }) {
    return unverifiedEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NocurrentUser value)? noCurrentUser,
    TResult Function(_UnverifiedEmail value)? unverifiedEmail,
    TResult Function(_CashError value)? cashError,
    TResult Function(_CurrentUserServerError value)? serverError,
    TResult Function(_UncompletedAccount value)? uncompletedAccount,
    required TResult orElse(),
  }) {
    if (unverifiedEmail != null) {
      return unverifiedEmail(this);
    }
    return orElse();
  }
}

abstract class _UnverifiedEmail implements CurrentUserException {
  const factory _UnverifiedEmail() = _$_UnverifiedEmail;
}

/// @nodoc
abstract class _$$_CashErrorCopyWith<$Res> {
  factory _$$_CashErrorCopyWith(
          _$_CashError value, $Res Function(_$_CashError) then) =
      __$$_CashErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CashErrorCopyWithImpl<$Res>
    extends _$CurrentUserExceptionCopyWithImpl<$Res>
    implements _$$_CashErrorCopyWith<$Res> {
  __$$_CashErrorCopyWithImpl(
      _$_CashError _value, $Res Function(_$_CashError) _then)
      : super(_value, (v) => _then(v as _$_CashError));

  @override
  _$_CashError get _value => super._value as _$_CashError;
}

/// @nodoc

class _$_CashError implements _CashError {
  const _$_CashError();

  @override
  String toString() {
    return 'CurrentUserException.cashError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CashError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noCurrentUser,
    required TResult Function() unverifiedEmail,
    required TResult Function() cashError,
    required TResult Function() serverError,
    required TResult Function() uncompletedAccount,
  }) {
    return cashError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noCurrentUser,
    TResult Function()? unverifiedEmail,
    TResult Function()? cashError,
    TResult Function()? serverError,
    TResult Function()? uncompletedAccount,
  }) {
    return cashError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noCurrentUser,
    TResult Function()? unverifiedEmail,
    TResult Function()? cashError,
    TResult Function()? serverError,
    TResult Function()? uncompletedAccount,
    required TResult orElse(),
  }) {
    if (cashError != null) {
      return cashError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NocurrentUser value) noCurrentUser,
    required TResult Function(_UnverifiedEmail value) unverifiedEmail,
    required TResult Function(_CashError value) cashError,
    required TResult Function(_CurrentUserServerError value) serverError,
    required TResult Function(_UncompletedAccount value) uncompletedAccount,
  }) {
    return cashError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NocurrentUser value)? noCurrentUser,
    TResult Function(_UnverifiedEmail value)? unverifiedEmail,
    TResult Function(_CashError value)? cashError,
    TResult Function(_CurrentUserServerError value)? serverError,
    TResult Function(_UncompletedAccount value)? uncompletedAccount,
  }) {
    return cashError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NocurrentUser value)? noCurrentUser,
    TResult Function(_UnverifiedEmail value)? unverifiedEmail,
    TResult Function(_CashError value)? cashError,
    TResult Function(_CurrentUserServerError value)? serverError,
    TResult Function(_UncompletedAccount value)? uncompletedAccount,
    required TResult orElse(),
  }) {
    if (cashError != null) {
      return cashError(this);
    }
    return orElse();
  }
}

abstract class _CashError implements CurrentUserException {
  const factory _CashError() = _$_CashError;
}

/// @nodoc
abstract class _$$_CurrentUserServerErrorCopyWith<$Res> {
  factory _$$_CurrentUserServerErrorCopyWith(_$_CurrentUserServerError value,
          $Res Function(_$_CurrentUserServerError) then) =
      __$$_CurrentUserServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CurrentUserServerErrorCopyWithImpl<$Res>
    extends _$CurrentUserExceptionCopyWithImpl<$Res>
    implements _$$_CurrentUserServerErrorCopyWith<$Res> {
  __$$_CurrentUserServerErrorCopyWithImpl(_$_CurrentUserServerError _value,
      $Res Function(_$_CurrentUserServerError) _then)
      : super(_value, (v) => _then(v as _$_CurrentUserServerError));

  @override
  _$_CurrentUserServerError get _value =>
      super._value as _$_CurrentUserServerError;
}

/// @nodoc

class _$_CurrentUserServerError implements _CurrentUserServerError {
  const _$_CurrentUserServerError();

  @override
  String toString() {
    return 'CurrentUserException.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentUserServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noCurrentUser,
    required TResult Function() unverifiedEmail,
    required TResult Function() cashError,
    required TResult Function() serverError,
    required TResult Function() uncompletedAccount,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noCurrentUser,
    TResult Function()? unverifiedEmail,
    TResult Function()? cashError,
    TResult Function()? serverError,
    TResult Function()? uncompletedAccount,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noCurrentUser,
    TResult Function()? unverifiedEmail,
    TResult Function()? cashError,
    TResult Function()? serverError,
    TResult Function()? uncompletedAccount,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NocurrentUser value) noCurrentUser,
    required TResult Function(_UnverifiedEmail value) unverifiedEmail,
    required TResult Function(_CashError value) cashError,
    required TResult Function(_CurrentUserServerError value) serverError,
    required TResult Function(_UncompletedAccount value) uncompletedAccount,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NocurrentUser value)? noCurrentUser,
    TResult Function(_UnverifiedEmail value)? unverifiedEmail,
    TResult Function(_CashError value)? cashError,
    TResult Function(_CurrentUserServerError value)? serverError,
    TResult Function(_UncompletedAccount value)? uncompletedAccount,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NocurrentUser value)? noCurrentUser,
    TResult Function(_UnverifiedEmail value)? unverifiedEmail,
    TResult Function(_CashError value)? cashError,
    TResult Function(_CurrentUserServerError value)? serverError,
    TResult Function(_UncompletedAccount value)? uncompletedAccount,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _CurrentUserServerError implements CurrentUserException {
  const factory _CurrentUserServerError() = _$_CurrentUserServerError;
}

/// @nodoc
abstract class _$$_UncompletedAccountCopyWith<$Res> {
  factory _$$_UncompletedAccountCopyWith(_$_UncompletedAccount value,
          $Res Function(_$_UncompletedAccount) then) =
      __$$_UncompletedAccountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UncompletedAccountCopyWithImpl<$Res>
    extends _$CurrentUserExceptionCopyWithImpl<$Res>
    implements _$$_UncompletedAccountCopyWith<$Res> {
  __$$_UncompletedAccountCopyWithImpl(
      _$_UncompletedAccount _value, $Res Function(_$_UncompletedAccount) _then)
      : super(_value, (v) => _then(v as _$_UncompletedAccount));

  @override
  _$_UncompletedAccount get _value => super._value as _$_UncompletedAccount;
}

/// @nodoc

class _$_UncompletedAccount implements _UncompletedAccount {
  const _$_UncompletedAccount();

  @override
  String toString() {
    return 'CurrentUserException.uncompletedAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UncompletedAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noCurrentUser,
    required TResult Function() unverifiedEmail,
    required TResult Function() cashError,
    required TResult Function() serverError,
    required TResult Function() uncompletedAccount,
  }) {
    return uncompletedAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noCurrentUser,
    TResult Function()? unverifiedEmail,
    TResult Function()? cashError,
    TResult Function()? serverError,
    TResult Function()? uncompletedAccount,
  }) {
    return uncompletedAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noCurrentUser,
    TResult Function()? unverifiedEmail,
    TResult Function()? cashError,
    TResult Function()? serverError,
    TResult Function()? uncompletedAccount,
    required TResult orElse(),
  }) {
    if (uncompletedAccount != null) {
      return uncompletedAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NocurrentUser value) noCurrentUser,
    required TResult Function(_UnverifiedEmail value) unverifiedEmail,
    required TResult Function(_CashError value) cashError,
    required TResult Function(_CurrentUserServerError value) serverError,
    required TResult Function(_UncompletedAccount value) uncompletedAccount,
  }) {
    return uncompletedAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NocurrentUser value)? noCurrentUser,
    TResult Function(_UnverifiedEmail value)? unverifiedEmail,
    TResult Function(_CashError value)? cashError,
    TResult Function(_CurrentUserServerError value)? serverError,
    TResult Function(_UncompletedAccount value)? uncompletedAccount,
  }) {
    return uncompletedAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NocurrentUser value)? noCurrentUser,
    TResult Function(_UnverifiedEmail value)? unverifiedEmail,
    TResult Function(_CashError value)? cashError,
    TResult Function(_CurrentUserServerError value)? serverError,
    TResult Function(_UncompletedAccount value)? uncompletedAccount,
    required TResult orElse(),
  }) {
    if (uncompletedAccount != null) {
      return uncompletedAccount(this);
    }
    return orElse();
  }
}

abstract class _UncompletedAccount implements CurrentUserException {
  const factory _UncompletedAccount() = _$_UncompletedAccount;
}
