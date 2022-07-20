// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() canecledByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? canecledByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? canecledByUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CanceledByUser value) canecledByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CanceledByUser value)? canecledByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CanceledByUser value)? canecledByUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailuresCopyWith<$Res> {
  factory $AuthFailuresCopyWith(
          AuthFailures value, $Res Function(AuthFailures) then) =
      _$AuthFailuresCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailuresCopyWithImpl<$Res> implements $AuthFailuresCopyWith<$Res> {
  _$AuthFailuresCopyWithImpl(this._value, this._then);

  final AuthFailures _value;
  // ignore: unused_field
  final $Res Function(AuthFailures) _then;
}

/// @nodoc
abstract class _$$CanceledByUserCopyWith<$Res> {
  factory _$$CanceledByUserCopyWith(
          _$CanceledByUser value, $Res Function(_$CanceledByUser) then) =
      __$$CanceledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CanceledByUserCopyWithImpl<$Res>
    extends _$AuthFailuresCopyWithImpl<$Res>
    implements _$$CanceledByUserCopyWith<$Res> {
  __$$CanceledByUserCopyWithImpl(
      _$CanceledByUser _value, $Res Function(_$CanceledByUser) _then)
      : super(_value, (v) => _then(v as _$CanceledByUser));

  @override
  _$CanceledByUser get _value => super._value as _$CanceledByUser;
}

/// @nodoc

class _$CanceledByUser implements CanceledByUser {
  _$CanceledByUser();

  @override
  String toString() {
    return 'AuthFailures.canecledByUser()';
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
    required TResult Function() canecledByUser,
  }) {
    return canecledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? canecledByUser,
  }) {
    return canecledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? canecledByUser,
    required TResult orElse(),
  }) {
    if (canecledByUser != null) {
      return canecledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CanceledByUser value) canecledByUser,
  }) {
    return canecledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CanceledByUser value)? canecledByUser,
  }) {
    return canecledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CanceledByUser value)? canecledByUser,
    required TResult orElse(),
  }) {
    if (canecledByUser != null) {
      return canecledByUser(this);
    }
    return orElse();
  }
}

abstract class CanceledByUser implements AuthFailures {
  factory CanceledByUser() = _$CanceledByUser;
}