// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileLoading,
    required TResult Function(ProfileResponse profileResponse) profileSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) profileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileLoading,
    TResult? Function(ProfileResponse profileResponse)? profileSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? profileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileLoading,
    TResult Function(ProfileResponse profileResponse)? profileSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? profileError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProfileLoading<T> value) profileLoading,
    required TResult Function(ProfileSuccess<T> value) profileSuccess,
    required TResult Function(ProfileError<T> value) profileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProfileLoading<T> value)? profileLoading,
    TResult? Function(ProfileSuccess<T> value)? profileSuccess,
    TResult? Function(ProfileError<T> value)? profileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProfileLoading<T> value)? profileLoading,
    TResult Function(ProfileSuccess<T> value)? profileSuccess,
    TResult Function(ProfileError<T> value)? profileError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<T, $Res> {
  factory $ProfileStateCopyWith(
          ProfileState<T> value, $Res Function(ProfileState<T>) then) =
      _$ProfileStateCopyWithImpl<T, $Res, ProfileState<T>>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<T, $Res, $Val extends ProfileState<T>>
    implements $ProfileStateCopyWith<T, $Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$ProfileStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProfileState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileLoading,
    required TResult Function(ProfileResponse profileResponse) profileSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) profileError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileLoading,
    TResult? Function(ProfileResponse profileResponse)? profileSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? profileError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileLoading,
    TResult Function(ProfileResponse profileResponse)? profileSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? profileError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProfileLoading<T> value) profileLoading,
    required TResult Function(ProfileSuccess<T> value) profileSuccess,
    required TResult Function(ProfileError<T> value) profileError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProfileLoading<T> value)? profileLoading,
    TResult? Function(ProfileSuccess<T> value)? profileSuccess,
    TResult? Function(ProfileError<T> value)? profileError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProfileLoading<T> value)? profileLoading,
    TResult Function(ProfileSuccess<T> value)? profileSuccess,
    TResult Function(ProfileError<T> value)? profileError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements ProfileState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$ProfileLoadingImplCopyWith<T, $Res> {
  factory _$$ProfileLoadingImplCopyWith(_$ProfileLoadingImpl<T> value,
          $Res Function(_$ProfileLoadingImpl<T>) then) =
      __$$ProfileLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ProfileLoadingImplCopyWithImpl<T, $Res>
    extends _$ProfileStateCopyWithImpl<T, $Res, _$ProfileLoadingImpl<T>>
    implements _$$ProfileLoadingImplCopyWith<T, $Res> {
  __$$ProfileLoadingImplCopyWithImpl(_$ProfileLoadingImpl<T> _value,
      $Res Function(_$ProfileLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileLoadingImpl<T> implements ProfileLoading<T> {
  const _$ProfileLoadingImpl();

  @override
  String toString() {
    return 'ProfileState<$T>.profileLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileLoading,
    required TResult Function(ProfileResponse profileResponse) profileSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) profileError,
  }) {
    return profileLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileLoading,
    TResult? Function(ProfileResponse profileResponse)? profileSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? profileError,
  }) {
    return profileLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileLoading,
    TResult Function(ProfileResponse profileResponse)? profileSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? profileError,
    required TResult orElse(),
  }) {
    if (profileLoading != null) {
      return profileLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProfileLoading<T> value) profileLoading,
    required TResult Function(ProfileSuccess<T> value) profileSuccess,
    required TResult Function(ProfileError<T> value) profileError,
  }) {
    return profileLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProfileLoading<T> value)? profileLoading,
    TResult? Function(ProfileSuccess<T> value)? profileSuccess,
    TResult? Function(ProfileError<T> value)? profileError,
  }) {
    return profileLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProfileLoading<T> value)? profileLoading,
    TResult Function(ProfileSuccess<T> value)? profileSuccess,
    TResult Function(ProfileError<T> value)? profileError,
    required TResult orElse(),
  }) {
    if (profileLoading != null) {
      return profileLoading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoading<T> implements ProfileState<T> {
  const factory ProfileLoading() = _$ProfileLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ProfileSuccessImplCopyWith<T, $Res> {
  factory _$$ProfileSuccessImplCopyWith(_$ProfileSuccessImpl<T> value,
          $Res Function(_$ProfileSuccessImpl<T>) then) =
      __$$ProfileSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ProfileResponse profileResponse});
}

/// @nodoc
class __$$ProfileSuccessImplCopyWithImpl<T, $Res>
    extends _$ProfileStateCopyWithImpl<T, $Res, _$ProfileSuccessImpl<T>>
    implements _$$ProfileSuccessImplCopyWith<T, $Res> {
  __$$ProfileSuccessImplCopyWithImpl(_$ProfileSuccessImpl<T> _value,
      $Res Function(_$ProfileSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileResponse = null,
  }) {
    return _then(_$ProfileSuccessImpl<T>(
      null == profileResponse
          ? _value.profileResponse
          : profileResponse // ignore: cast_nullable_to_non_nullable
              as ProfileResponse,
    ));
  }
}

/// @nodoc

class _$ProfileSuccessImpl<T> implements ProfileSuccess<T> {
  const _$ProfileSuccessImpl(this.profileResponse);

  @override
  final ProfileResponse profileResponse;

  @override
  String toString() {
    return 'ProfileState<$T>.profileSuccess(profileResponse: $profileResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileSuccessImpl<T> &&
            (identical(other.profileResponse, profileResponse) ||
                other.profileResponse == profileResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileResponse);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileSuccessImplCopyWith<T, _$ProfileSuccessImpl<T>> get copyWith =>
      __$$ProfileSuccessImplCopyWithImpl<T, _$ProfileSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileLoading,
    required TResult Function(ProfileResponse profileResponse) profileSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) profileError,
  }) {
    return profileSuccess(profileResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileLoading,
    TResult? Function(ProfileResponse profileResponse)? profileSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? profileError,
  }) {
    return profileSuccess?.call(profileResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileLoading,
    TResult Function(ProfileResponse profileResponse)? profileSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? profileError,
    required TResult orElse(),
  }) {
    if (profileSuccess != null) {
      return profileSuccess(profileResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProfileLoading<T> value) profileLoading,
    required TResult Function(ProfileSuccess<T> value) profileSuccess,
    required TResult Function(ProfileError<T> value) profileError,
  }) {
    return profileSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProfileLoading<T> value)? profileLoading,
    TResult? Function(ProfileSuccess<T> value)? profileSuccess,
    TResult? Function(ProfileError<T> value)? profileError,
  }) {
    return profileSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProfileLoading<T> value)? profileLoading,
    TResult Function(ProfileSuccess<T> value)? profileSuccess,
    TResult Function(ProfileError<T> value)? profileError,
    required TResult orElse(),
  }) {
    if (profileSuccess != null) {
      return profileSuccess(this);
    }
    return orElse();
  }
}

abstract class ProfileSuccess<T> implements ProfileState<T> {
  const factory ProfileSuccess(final ProfileResponse profileResponse) =
      _$ProfileSuccessImpl<T>;

  ProfileResponse get profileResponse;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileSuccessImplCopyWith<T, _$ProfileSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileErrorImplCopyWith<T, $Res> {
  factory _$$ProfileErrorImplCopyWith(_$ProfileErrorImpl<T> value,
          $Res Function(_$ProfileErrorImpl<T>) then) =
      __$$ProfileErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$ProfileErrorImplCopyWithImpl<T, $Res>
    extends _$ProfileStateCopyWithImpl<T, $Res, _$ProfileErrorImpl<T>>
    implements _$$ProfileErrorImplCopyWith<T, $Res> {
  __$$ProfileErrorImplCopyWithImpl(
      _$ProfileErrorImpl<T> _value, $Res Function(_$ProfileErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$ProfileErrorImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$ProfileErrorImpl<T> implements ProfileError<T> {
  const _$ProfileErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'ProfileState<$T>.profileError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileErrorImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileErrorImplCopyWith<T, _$ProfileErrorImpl<T>> get copyWith =>
      __$$ProfileErrorImplCopyWithImpl<T, _$ProfileErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() profileLoading,
    required TResult Function(ProfileResponse profileResponse) profileSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) profileError,
  }) {
    return profileError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? profileLoading,
    TResult? Function(ProfileResponse profileResponse)? profileSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? profileError,
  }) {
    return profileError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? profileLoading,
    TResult Function(ProfileResponse profileResponse)? profileSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? profileError,
    required TResult orElse(),
  }) {
    if (profileError != null) {
      return profileError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProfileLoading<T> value) profileLoading,
    required TResult Function(ProfileSuccess<T> value) profileSuccess,
    required TResult Function(ProfileError<T> value) profileError,
  }) {
    return profileError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProfileLoading<T> value)? profileLoading,
    TResult? Function(ProfileSuccess<T> value)? profileSuccess,
    TResult? Function(ProfileError<T> value)? profileError,
  }) {
    return profileError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProfileLoading<T> value)? profileLoading,
    TResult Function(ProfileSuccess<T> value)? profileSuccess,
    TResult Function(ProfileError<T> value)? profileError,
    required TResult orElse(),
  }) {
    if (profileError != null) {
      return profileError(this);
    }
    return orElse();
  }
}

abstract class ProfileError<T> implements ProfileState<T> {
  const factory ProfileError(final ApiErrorModel apiErrorModel) =
      _$ProfileErrorImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileErrorImplCopyWith<T, _$ProfileErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
