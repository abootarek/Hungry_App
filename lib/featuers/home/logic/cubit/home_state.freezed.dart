// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homeStateLoading,
    required TResult Function(HomeResponse homeResponse) homeStateSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) homeStateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homeStateLoading,
    TResult? Function(HomeResponse homeResponse)? homeStateSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? homeStateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homeStateLoading,
    TResult Function(HomeResponse homeResponse)? homeStateSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? homeStateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(HomeStateLoading<T> value) homeStateLoading,
    required TResult Function(HomeStateSuccess<T> value) homeStateSuccess,
    required TResult Function(HomeStateFailure<T> value) homeStateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(HomeStateLoading<T> value)? homeStateLoading,
    TResult? Function(HomeStateSuccess<T> value)? homeStateSuccess,
    TResult? Function(HomeStateFailure<T> value)? homeStateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(HomeStateLoading<T> value)? homeStateLoading,
    TResult Function(HomeStateSuccess<T> value)? homeStateSuccess,
    TResult Function(HomeStateFailure<T> value)? homeStateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
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
    extends _$HomeStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState<$T>.initial()';
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
    required TResult Function() homeStateLoading,
    required TResult Function(HomeResponse homeResponse) homeStateSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) homeStateFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homeStateLoading,
    TResult? Function(HomeResponse homeResponse)? homeStateSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? homeStateFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homeStateLoading,
    TResult Function(HomeResponse homeResponse)? homeStateSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? homeStateFailure,
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
    required TResult Function(HomeStateLoading<T> value) homeStateLoading,
    required TResult Function(HomeStateSuccess<T> value) homeStateSuccess,
    required TResult Function(HomeStateFailure<T> value) homeStateFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(HomeStateLoading<T> value)? homeStateLoading,
    TResult? Function(HomeStateSuccess<T> value)? homeStateSuccess,
    TResult? Function(HomeStateFailure<T> value)? homeStateFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(HomeStateLoading<T> value)? homeStateLoading,
    TResult Function(HomeStateSuccess<T> value)? homeStateSuccess,
    TResult Function(HomeStateFailure<T> value)? homeStateFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements HomeState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$HomeStateLoadingImplCopyWith<T, $Res> {
  factory _$$HomeStateLoadingImplCopyWith(_$HomeStateLoadingImpl<T> value,
          $Res Function(_$HomeStateLoadingImpl<T>) then) =
      __$$HomeStateLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$HomeStateLoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$HomeStateLoadingImpl<T>>
    implements _$$HomeStateLoadingImplCopyWith<T, $Res> {
  __$$HomeStateLoadingImplCopyWithImpl(_$HomeStateLoadingImpl<T> _value,
      $Res Function(_$HomeStateLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeStateLoadingImpl<T> implements HomeStateLoading<T> {
  const _$HomeStateLoadingImpl();

  @override
  String toString() {
    return 'HomeState<$T>.homeStateLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homeStateLoading,
    required TResult Function(HomeResponse homeResponse) homeStateSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) homeStateFailure,
  }) {
    return homeStateLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homeStateLoading,
    TResult? Function(HomeResponse homeResponse)? homeStateSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? homeStateFailure,
  }) {
    return homeStateLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homeStateLoading,
    TResult Function(HomeResponse homeResponse)? homeStateSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? homeStateFailure,
    required TResult orElse(),
  }) {
    if (homeStateLoading != null) {
      return homeStateLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(HomeStateLoading<T> value) homeStateLoading,
    required TResult Function(HomeStateSuccess<T> value) homeStateSuccess,
    required TResult Function(HomeStateFailure<T> value) homeStateFailure,
  }) {
    return homeStateLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(HomeStateLoading<T> value)? homeStateLoading,
    TResult? Function(HomeStateSuccess<T> value)? homeStateSuccess,
    TResult? Function(HomeStateFailure<T> value)? homeStateFailure,
  }) {
    return homeStateLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(HomeStateLoading<T> value)? homeStateLoading,
    TResult Function(HomeStateSuccess<T> value)? homeStateSuccess,
    TResult Function(HomeStateFailure<T> value)? homeStateFailure,
    required TResult orElse(),
  }) {
    if (homeStateLoading != null) {
      return homeStateLoading(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoading<T> implements HomeState<T> {
  const factory HomeStateLoading() = _$HomeStateLoadingImpl<T>;
}

/// @nodoc
abstract class _$$HomeStateSuccessImplCopyWith<T, $Res> {
  factory _$$HomeStateSuccessImplCopyWith(_$HomeStateSuccessImpl<T> value,
          $Res Function(_$HomeStateSuccessImpl<T>) then) =
      __$$HomeStateSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({HomeResponse homeResponse});
}

/// @nodoc
class __$$HomeStateSuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$HomeStateSuccessImpl<T>>
    implements _$$HomeStateSuccessImplCopyWith<T, $Res> {
  __$$HomeStateSuccessImplCopyWithImpl(_$HomeStateSuccessImpl<T> _value,
      $Res Function(_$HomeStateSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeResponse = null,
  }) {
    return _then(_$HomeStateSuccessImpl<T>(
      null == homeResponse
          ? _value.homeResponse
          : homeResponse // ignore: cast_nullable_to_non_nullable
              as HomeResponse,
    ));
  }
}

/// @nodoc

class _$HomeStateSuccessImpl<T> implements HomeStateSuccess<T> {
  const _$HomeStateSuccessImpl(this.homeResponse);

  @override
  final HomeResponse homeResponse;

  @override
  String toString() {
    return 'HomeState<$T>.homeStateSuccess(homeResponse: $homeResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateSuccessImpl<T> &&
            (identical(other.homeResponse, homeResponse) ||
                other.homeResponse == homeResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, homeResponse);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateSuccessImplCopyWith<T, _$HomeStateSuccessImpl<T>> get copyWith =>
      __$$HomeStateSuccessImplCopyWithImpl<T, _$HomeStateSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homeStateLoading,
    required TResult Function(HomeResponse homeResponse) homeStateSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) homeStateFailure,
  }) {
    return homeStateSuccess(homeResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homeStateLoading,
    TResult? Function(HomeResponse homeResponse)? homeStateSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? homeStateFailure,
  }) {
    return homeStateSuccess?.call(homeResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homeStateLoading,
    TResult Function(HomeResponse homeResponse)? homeStateSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? homeStateFailure,
    required TResult orElse(),
  }) {
    if (homeStateSuccess != null) {
      return homeStateSuccess(homeResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(HomeStateLoading<T> value) homeStateLoading,
    required TResult Function(HomeStateSuccess<T> value) homeStateSuccess,
    required TResult Function(HomeStateFailure<T> value) homeStateFailure,
  }) {
    return homeStateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(HomeStateLoading<T> value)? homeStateLoading,
    TResult? Function(HomeStateSuccess<T> value)? homeStateSuccess,
    TResult? Function(HomeStateFailure<T> value)? homeStateFailure,
  }) {
    return homeStateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(HomeStateLoading<T> value)? homeStateLoading,
    TResult Function(HomeStateSuccess<T> value)? homeStateSuccess,
    TResult Function(HomeStateFailure<T> value)? homeStateFailure,
    required TResult orElse(),
  }) {
    if (homeStateSuccess != null) {
      return homeStateSuccess(this);
    }
    return orElse();
  }
}

abstract class HomeStateSuccess<T> implements HomeState<T> {
  const factory HomeStateSuccess(final HomeResponse homeResponse) =
      _$HomeStateSuccessImpl<T>;

  HomeResponse get homeResponse;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateSuccessImplCopyWith<T, _$HomeStateSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeStateFailureImplCopyWith<T, $Res> {
  factory _$$HomeStateFailureImplCopyWith(_$HomeStateFailureImpl<T> value,
          $Res Function(_$HomeStateFailureImpl<T>) then) =
      __$$HomeStateFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$HomeStateFailureImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$HomeStateFailureImpl<T>>
    implements _$$HomeStateFailureImplCopyWith<T, $Res> {
  __$$HomeStateFailureImplCopyWithImpl(_$HomeStateFailureImpl<T> _value,
      $Res Function(_$HomeStateFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$HomeStateFailureImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$HomeStateFailureImpl<T> implements HomeStateFailure<T> {
  const _$HomeStateFailureImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'HomeState<$T>.homeStateFailure(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateFailureImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateFailureImplCopyWith<T, _$HomeStateFailureImpl<T>> get copyWith =>
      __$$HomeStateFailureImplCopyWithImpl<T, _$HomeStateFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() homeStateLoading,
    required TResult Function(HomeResponse homeResponse) homeStateSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) homeStateFailure,
  }) {
    return homeStateFailure(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? homeStateLoading,
    TResult? Function(HomeResponse homeResponse)? homeStateSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? homeStateFailure,
  }) {
    return homeStateFailure?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? homeStateLoading,
    TResult Function(HomeResponse homeResponse)? homeStateSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? homeStateFailure,
    required TResult orElse(),
  }) {
    if (homeStateFailure != null) {
      return homeStateFailure(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(HomeStateLoading<T> value) homeStateLoading,
    required TResult Function(HomeStateSuccess<T> value) homeStateSuccess,
    required TResult Function(HomeStateFailure<T> value) homeStateFailure,
  }) {
    return homeStateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(HomeStateLoading<T> value)? homeStateLoading,
    TResult? Function(HomeStateSuccess<T> value)? homeStateSuccess,
    TResult? Function(HomeStateFailure<T> value)? homeStateFailure,
  }) {
    return homeStateFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(HomeStateLoading<T> value)? homeStateLoading,
    TResult Function(HomeStateSuccess<T> value)? homeStateSuccess,
    TResult Function(HomeStateFailure<T> value)? homeStateFailure,
    required TResult orElse(),
  }) {
    if (homeStateFailure != null) {
      return homeStateFailure(this);
    }
    return orElse();
  }
}

abstract class HomeStateFailure<T> implements HomeState<T> {
  const factory HomeStateFailure(final ApiErrorModel apiErrorModel) =
      _$HomeStateFailureImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateFailureImplCopyWith<T, _$HomeStateFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
