// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_pref_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppPrefStates {
  bool get finishGetAppTheme => throw _privateConstructorUsedError;
  bool get finishGetAppLanguage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppPrefStatesCopyWith<AppPrefStates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPrefStatesCopyWith<$Res> {
  factory $AppPrefStatesCopyWith(
          AppPrefStates value, $Res Function(AppPrefStates) then) =
      _$AppPrefStatesCopyWithImpl<$Res>;
  $Res call({bool finishGetAppTheme, bool finishGetAppLanguage});
}

/// @nodoc
class _$AppPrefStatesCopyWithImpl<$Res>
    implements $AppPrefStatesCopyWith<$Res> {
  _$AppPrefStatesCopyWithImpl(this._value, this._then);

  final AppPrefStates _value;
  // ignore: unused_field
  final $Res Function(AppPrefStates) _then;

  @override
  $Res call({
    Object? finishGetAppTheme = freezed,
    Object? finishGetAppLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      finishGetAppTheme: finishGetAppTheme == freezed
          ? _value.finishGetAppTheme
          : finishGetAppTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      finishGetAppLanguage: finishGetAppLanguage == freezed
          ? _value.finishGetAppLanguage
          : finishGetAppLanguage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_LocalAppPrefStateCopyWith<$Res>
    implements $AppPrefStatesCopyWith<$Res> {
  factory _$$_LocalAppPrefStateCopyWith(_$_LocalAppPrefState value,
          $Res Function(_$_LocalAppPrefState) then) =
      __$$_LocalAppPrefStateCopyWithImpl<$Res>;
  @override
  $Res call({bool finishGetAppTheme, bool finishGetAppLanguage});
}

/// @nodoc
class __$$_LocalAppPrefStateCopyWithImpl<$Res>
    extends _$AppPrefStatesCopyWithImpl<$Res>
    implements _$$_LocalAppPrefStateCopyWith<$Res> {
  __$$_LocalAppPrefStateCopyWithImpl(
      _$_LocalAppPrefState _value, $Res Function(_$_LocalAppPrefState) _then)
      : super(_value, (v) => _then(v as _$_LocalAppPrefState));

  @override
  _$_LocalAppPrefState get _value => super._value as _$_LocalAppPrefState;

  @override
  $Res call({
    Object? finishGetAppTheme = freezed,
    Object? finishGetAppLanguage = freezed,
  }) {
    return _then(_$_LocalAppPrefState(
      finishGetAppTheme: finishGetAppTheme == freezed
          ? _value.finishGetAppTheme
          : finishGetAppTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      finishGetAppLanguage: finishGetAppLanguage == freezed
          ? _value.finishGetAppLanguage
          : finishGetAppLanguage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LocalAppPrefState implements _LocalAppPrefState {
  _$_LocalAppPrefState(
      {required this.finishGetAppTheme, required this.finishGetAppLanguage});

  @override
  final bool finishGetAppTheme;
  @override
  final bool finishGetAppLanguage;

  @override
  String toString() {
    return 'AppPrefStates(finishGetAppTheme: $finishGetAppTheme, finishGetAppLanguage: $finishGetAppLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalAppPrefState &&
            const DeepCollectionEquality()
                .equals(other.finishGetAppTheme, finishGetAppTheme) &&
            const DeepCollectionEquality()
                .equals(other.finishGetAppLanguage, finishGetAppLanguage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(finishGetAppTheme),
      const DeepCollectionEquality().hash(finishGetAppLanguage));

  @JsonKey(ignore: true)
  @override
  _$$_LocalAppPrefStateCopyWith<_$_LocalAppPrefState> get copyWith =>
      __$$_LocalAppPrefStateCopyWithImpl<_$_LocalAppPrefState>(
          this, _$identity);
}

abstract class _LocalAppPrefState implements AppPrefStates {
  factory _LocalAppPrefState(
      {required final bool finishGetAppTheme,
      required final bool finishGetAppLanguage}) = _$_LocalAppPrefState;

  @override
  bool get finishGetAppTheme;
  @override
  bool get finishGetAppLanguage;
  @override
  @JsonKey(ignore: true)
  _$$_LocalAppPrefStateCopyWith<_$_LocalAppPrefState> get copyWith =>
      throw _privateConstructorUsedError;
}
