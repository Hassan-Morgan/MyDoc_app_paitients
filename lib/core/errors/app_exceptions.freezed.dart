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

/// @nodoc
mixin _$AuthExceptions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noCurrentUser,
    required TResult Function() serverException,
    required TResult Function() incorrectEmailOrPassword,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() canceledByUser,
    required TResult Function() wrongEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noCurrentUser,
    TResult Function()? serverException,
    TResult Function()? incorrectEmailOrPassword,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? canceledByUser,
    TResult Function()? wrongEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noCurrentUser,
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
    required TResult Function(NocurrentUser value) noCurrentUser,
    required TResult Function(ServerException value) serverException,
    required TResult Function(IncorrectEmailOrPassword value)
        incorrectEmailOrPassword,
    required TResult Function(EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(CanceledByUser value) canceledByUser,
    required TResult Function(wrongEmail value) wrongEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NocurrentUser value)? noCurrentUser,
    TResult Function(ServerException value)? serverException,
    TResult Function(IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(wrongEmail value)? wrongEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NocurrentUser value)? noCurrentUser,
    TResult Function(ServerException value)? serverException,
    TResult Function(IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(wrongEmail value)? wrongEmail,
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
abstract class _$$NocurrentUserCopyWith<$Res> {
  factory _$$NocurrentUserCopyWith(
          _$NocurrentUser value, $Res Function(_$NocurrentUser) then) =
      __$$NocurrentUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NocurrentUserCopyWithImpl<$Res>
    extends _$AuthExceptionsCopyWithImpl<$Res>
    implements _$$NocurrentUserCopyWith<$Res> {
  __$$NocurrentUserCopyWithImpl(
      _$NocurrentUser _value, $Res Function(_$NocurrentUser) _then)
      : super(_value, (v) => _then(v as _$NocurrentUser));

  @override
  _$NocurrentUser get _value => super._value as _$NocurrentUser;
}

/// @nodoc

class _$NocurrentUser implements NocurrentUser {
  const _$NocurrentUser();

  @override
  String toString() {
    return 'AuthExceptions.noCurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NocurrentUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noCurrentUser,
    required TResult Function() serverException,
    required TResult Function() incorrectEmailOrPassword,
    required TResult Function() emailAlreadyRegistered,
    required TResult Function() canceledByUser,
    required TResult Function() wrongEmail,
  }) {
    return noCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noCurrentUser,
    TResult Function()? serverException,
    TResult Function()? incorrectEmailOrPassword,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? canceledByUser,
    TResult Function()? wrongEmail,
  }) {
    return noCurrentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noCurrentUser,
    TResult Function()? serverException,
    TResult Function()? incorrectEmailOrPassword,
    TResult Function()? emailAlreadyRegistered,
    TResult Function()? canceledByUser,
    TResult Function()? wrongEmail,
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
    required TResult Function(NocurrentUser value) noCurrentUser,
    required TResult Function(ServerException value) serverException,
    required TResult Function(IncorrectEmailOrPassword value)
        incorrectEmailOrPassword,
    required TResult Function(EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(CanceledByUser value) canceledByUser,
    required TResult Function(wrongEmail value) wrongEmail,
  }) {
    return noCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NocurrentUser value)? noCurrentUser,
    TResult Function(ServerException value)? serverException,
    TResult Function(IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(wrongEmail value)? wrongEmail,
  }) {
    return noCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NocurrentUser value)? noCurrentUser,
    TResult Function(ServerException value)? serverException,
    TResult Function(IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(wrongEmail value)? wrongEmail,
    required TResult orElse(),
  }) {
    if (noCurrentUser != null) {
      return noCurrentUser(this);
    }
    return orElse();
  }
}

abstract class NocurrentUser implements AuthExceptions {
  const factory NocurrentUser() = _$NocurrentUser;
}

/// @nodoc
abstract class _$$ServerExceptionCopyWith<$Res> {
  factory _$$ServerExceptionCopyWith(
          _$ServerException value, $Res Function(_$ServerException) then) =
      __$$ServerExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerExceptionCopyWithImpl<$Res>
    extends _$AuthExceptionsCopyWithImpl<$Res>
    implements _$$ServerExceptionCopyWith<$Res> {
  __$$ServerExceptionCopyWithImpl(
      _$ServerException _value, $Res Function(_$ServerException) _then)
      : super(_value, (v) => _then(v as _$ServerException));

  @override
  _$ServerException get _value => super._value as _$ServerException;
}

/// @nodoc

class _$ServerException implements ServerException {
  const _$ServerException();

  @override
  String toString() {
    return 'AuthExceptions.serverException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noCurrentUser,
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
    TResult Function()? noCurrentUser,
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
    TResult Function()? noCurrentUser,
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
    required TResult Function(NocurrentUser value) noCurrentUser,
    required TResult Function(ServerException value) serverException,
    required TResult Function(IncorrectEmailOrPassword value)
        incorrectEmailOrPassword,
    required TResult Function(EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(CanceledByUser value) canceledByUser,
    required TResult Function(wrongEmail value) wrongEmail,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NocurrentUser value)? noCurrentUser,
    TResult Function(ServerException value)? serverException,
    TResult Function(IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(wrongEmail value)? wrongEmail,
  }) {
    return serverException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NocurrentUser value)? noCurrentUser,
    TResult Function(ServerException value)? serverException,
    TResult Function(IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(wrongEmail value)? wrongEmail,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class ServerException implements AuthExceptions {
  const factory ServerException() = _$ServerException;
}

/// @nodoc
abstract class _$$IncorrectEmailOrPasswordCopyWith<$Res> {
  factory _$$IncorrectEmailOrPasswordCopyWith(_$IncorrectEmailOrPassword value,
          $Res Function(_$IncorrectEmailOrPassword) then) =
      __$$IncorrectEmailOrPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncorrectEmailOrPasswordCopyWithImpl<$Res>
    extends _$AuthExceptionsCopyWithImpl<$Res>
    implements _$$IncorrectEmailOrPasswordCopyWith<$Res> {
  __$$IncorrectEmailOrPasswordCopyWithImpl(_$IncorrectEmailOrPassword _value,
      $Res Function(_$IncorrectEmailOrPassword) _then)
      : super(_value, (v) => _then(v as _$IncorrectEmailOrPassword));

  @override
  _$IncorrectEmailOrPassword get _value =>
      super._value as _$IncorrectEmailOrPassword;
}

/// @nodoc

class _$IncorrectEmailOrPassword implements IncorrectEmailOrPassword {
  const _$IncorrectEmailOrPassword();

  @override
  String toString() {
    return 'AuthExceptions.incorrectEmailOrPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncorrectEmailOrPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noCurrentUser,
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
    TResult Function()? noCurrentUser,
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
    TResult Function()? noCurrentUser,
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
    required TResult Function(NocurrentUser value) noCurrentUser,
    required TResult Function(ServerException value) serverException,
    required TResult Function(IncorrectEmailOrPassword value)
        incorrectEmailOrPassword,
    required TResult Function(EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(CanceledByUser value) canceledByUser,
    required TResult Function(wrongEmail value) wrongEmail,
  }) {
    return incorrectEmailOrPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NocurrentUser value)? noCurrentUser,
    TResult Function(ServerException value)? serverException,
    TResult Function(IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(wrongEmail value)? wrongEmail,
  }) {
    return incorrectEmailOrPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NocurrentUser value)? noCurrentUser,
    TResult Function(ServerException value)? serverException,
    TResult Function(IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(wrongEmail value)? wrongEmail,
    required TResult orElse(),
  }) {
    if (incorrectEmailOrPassword != null) {
      return incorrectEmailOrPassword(this);
    }
    return orElse();
  }
}

abstract class IncorrectEmailOrPassword implements AuthExceptions {
  const factory IncorrectEmailOrPassword() = _$IncorrectEmailOrPassword;
}

/// @nodoc
abstract class _$$EmailAlreadyRegisteredCopyWith<$Res> {
  factory _$$EmailAlreadyRegisteredCopyWith(_$EmailAlreadyRegistered value,
          $Res Function(_$EmailAlreadyRegistered) then) =
      __$$EmailAlreadyRegisteredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailAlreadyRegisteredCopyWithImpl<$Res>
    extends _$AuthExceptionsCopyWithImpl<$Res>
    implements _$$EmailAlreadyRegisteredCopyWith<$Res> {
  __$$EmailAlreadyRegisteredCopyWithImpl(_$EmailAlreadyRegistered _value,
      $Res Function(_$EmailAlreadyRegistered) _then)
      : super(_value, (v) => _then(v as _$EmailAlreadyRegistered));

  @override
  _$EmailAlreadyRegistered get _value =>
      super._value as _$EmailAlreadyRegistered;
}

/// @nodoc

class _$EmailAlreadyRegistered implements EmailAlreadyRegistered {
  const _$EmailAlreadyRegistered();

  @override
  String toString() {
    return 'AuthExceptions.emailAlreadyRegistered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailAlreadyRegistered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noCurrentUser,
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
    TResult Function()? noCurrentUser,
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
    TResult Function()? noCurrentUser,
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
    required TResult Function(NocurrentUser value) noCurrentUser,
    required TResult Function(ServerException value) serverException,
    required TResult Function(IncorrectEmailOrPassword value)
        incorrectEmailOrPassword,
    required TResult Function(EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(CanceledByUser value) canceledByUser,
    required TResult Function(wrongEmail value) wrongEmail,
  }) {
    return emailAlreadyRegistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NocurrentUser value)? noCurrentUser,
    TResult Function(ServerException value)? serverException,
    TResult Function(IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(wrongEmail value)? wrongEmail,
  }) {
    return emailAlreadyRegistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NocurrentUser value)? noCurrentUser,
    TResult Function(ServerException value)? serverException,
    TResult Function(IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(wrongEmail value)? wrongEmail,
    required TResult orElse(),
  }) {
    if (emailAlreadyRegistered != null) {
      return emailAlreadyRegistered(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyRegistered implements AuthExceptions {
  const factory EmailAlreadyRegistered() = _$EmailAlreadyRegistered;
}

/// @nodoc
abstract class _$$CanceledByUserCopyWith<$Res> {
  factory _$$CanceledByUserCopyWith(
          _$CanceledByUser value, $Res Function(_$CanceledByUser) then) =
      __$$CanceledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CanceledByUserCopyWithImpl<$Res>
    extends _$AuthExceptionsCopyWithImpl<$Res>
    implements _$$CanceledByUserCopyWith<$Res> {
  __$$CanceledByUserCopyWithImpl(
      _$CanceledByUser _value, $Res Function(_$CanceledByUser) _then)
      : super(_value, (v) => _then(v as _$CanceledByUser));

  @override
  _$CanceledByUser get _value => super._value as _$CanceledByUser;
}

/// @nodoc

class _$CanceledByUser implements CanceledByUser {
  const _$CanceledByUser();

  @override
  String toString() {
    return 'AuthExceptions.canceledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CanceledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noCurrentUser,
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
    TResult Function()? noCurrentUser,
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
    TResult Function()? noCurrentUser,
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
    required TResult Function(NocurrentUser value) noCurrentUser,
    required TResult Function(ServerException value) serverException,
    required TResult Function(IncorrectEmailOrPassword value)
        incorrectEmailOrPassword,
    required TResult Function(EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(CanceledByUser value) canceledByUser,
    required TResult Function(wrongEmail value) wrongEmail,
  }) {
    return canceledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NocurrentUser value)? noCurrentUser,
    TResult Function(ServerException value)? serverException,
    TResult Function(IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(wrongEmail value)? wrongEmail,
  }) {
    return canceledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NocurrentUser value)? noCurrentUser,
    TResult Function(ServerException value)? serverException,
    TResult Function(IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(wrongEmail value)? wrongEmail,
    required TResult orElse(),
  }) {
    if (canceledByUser != null) {
      return canceledByUser(this);
    }
    return orElse();
  }
}

abstract class CanceledByUser implements AuthExceptions {
  const factory CanceledByUser() = _$CanceledByUser;
}

/// @nodoc
abstract class _$$wrongEmailCopyWith<$Res> {
  factory _$$wrongEmailCopyWith(
          _$wrongEmail value, $Res Function(_$wrongEmail) then) =
      __$$wrongEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$wrongEmailCopyWithImpl<$Res>
    extends _$AuthExceptionsCopyWithImpl<$Res>
    implements _$$wrongEmailCopyWith<$Res> {
  __$$wrongEmailCopyWithImpl(
      _$wrongEmail _value, $Res Function(_$wrongEmail) _then)
      : super(_value, (v) => _then(v as _$wrongEmail));

  @override
  _$wrongEmail get _value => super._value as _$wrongEmail;
}

/// @nodoc

class _$wrongEmail implements wrongEmail {
  const _$wrongEmail();

  @override
  String toString() {
    return 'AuthExceptions.wrongEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$wrongEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noCurrentUser,
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
    TResult Function()? noCurrentUser,
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
    TResult Function()? noCurrentUser,
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
    required TResult Function(NocurrentUser value) noCurrentUser,
    required TResult Function(ServerException value) serverException,
    required TResult Function(IncorrectEmailOrPassword value)
        incorrectEmailOrPassword,
    required TResult Function(EmailAlreadyRegistered value)
        emailAlreadyRegistered,
    required TResult Function(CanceledByUser value) canceledByUser,
    required TResult Function(wrongEmail value) wrongEmail,
  }) {
    return wrongEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NocurrentUser value)? noCurrentUser,
    TResult Function(ServerException value)? serverException,
    TResult Function(IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(wrongEmail value)? wrongEmail,
  }) {
    return wrongEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NocurrentUser value)? noCurrentUser,
    TResult Function(ServerException value)? serverException,
    TResult Function(IncorrectEmailOrPassword value)? incorrectEmailOrPassword,
    TResult Function(EmailAlreadyRegistered value)? emailAlreadyRegistered,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(wrongEmail value)? wrongEmail,
    required TResult orElse(),
  }) {
    if (wrongEmail != null) {
      return wrongEmail(this);
    }
    return orElse();
  }
}

abstract class wrongEmail implements AuthExceptions {
  const factory wrongEmail() = _$wrongEmail;
}
