// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MoviesEventTearOff {
  const _$MoviesEventTearOff();

  MoviesEventFetch fetch({required String page}) {
    return MoviesEventFetch(
      page: page,
    );
  }
}

/// @nodoc
const $MoviesEvent = _$MoviesEventTearOff();

/// @nodoc
mixin _$MoviesEvent {
  String get page => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String page) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String page)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String page)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoviesEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoviesEventCopyWith<MoviesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesEventCopyWith<$Res> {
  factory $MoviesEventCopyWith(
          MoviesEvent value, $Res Function(MoviesEvent) then) =
      _$MoviesEventCopyWithImpl<$Res>;
  $Res call({String page});
}

/// @nodoc
class _$MoviesEventCopyWithImpl<$Res> implements $MoviesEventCopyWith<$Res> {
  _$MoviesEventCopyWithImpl(this._value, this._then);

  final MoviesEvent _value;
  // ignore: unused_field
  final $Res Function(MoviesEvent) _then;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $MoviesEventFetchCopyWith<$Res>
    implements $MoviesEventCopyWith<$Res> {
  factory $MoviesEventFetchCopyWith(
          MoviesEventFetch value, $Res Function(MoviesEventFetch) then) =
      _$MoviesEventFetchCopyWithImpl<$Res>;
  @override
  $Res call({String page});
}

/// @nodoc
class _$MoviesEventFetchCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res>
    implements $MoviesEventFetchCopyWith<$Res> {
  _$MoviesEventFetchCopyWithImpl(
      MoviesEventFetch _value, $Res Function(MoviesEventFetch) _then)
      : super(_value, (v) => _then(v as MoviesEventFetch));

  @override
  MoviesEventFetch get _value => super._value as MoviesEventFetch;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(MoviesEventFetch(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MoviesEventFetch
    with DiagnosticableTreeMixin
    implements MoviesEventFetch {
  const _$MoviesEventFetch({required this.page});

  @override
  final String page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoviesEvent.fetch(page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MoviesEvent.fetch'))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MoviesEventFetch &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  $MoviesEventFetchCopyWith<MoviesEventFetch> get copyWith =>
      _$MoviesEventFetchCopyWithImpl<MoviesEventFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String page) fetch,
  }) {
    return fetch(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String page)? fetch,
  }) {
    return fetch?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String page)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoviesEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class MoviesEventFetch implements MoviesEvent {
  const factory MoviesEventFetch({required String page}) = _$MoviesEventFetch;

  @override
  String get page;
  @override
  @JsonKey(ignore: true)
  $MoviesEventFetchCopyWith<MoviesEventFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MovieStateTearOff {
  const _$MovieStateTearOff();

  MovieStateLoading loading() {
    return const MovieStateLoading();
  }

  MovieStateLoaded loaded({required Movie movieLoaded}) {
    return MovieStateLoaded(
      movieLoaded: movieLoaded,
    );
  }

  MovieStateError error() {
    return const MovieStateError();
  }
}

/// @nodoc
const $MovieState = _$MovieStateTearOff();

/// @nodoc
mixin _$MovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Movie movieLoaded) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movieLoaded)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movieLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStateLoading value) loading,
    required TResult Function(MovieStateLoaded value) loaded,
    required TResult Function(MovieStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieStateLoading value)? loading,
    TResult Function(MovieStateLoaded value)? loaded,
    TResult Function(MovieStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStateLoading value)? loading,
    TResult Function(MovieStateLoaded value)? loaded,
    TResult Function(MovieStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res> implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  final MovieState _value;
  // ignore: unused_field
  final $Res Function(MovieState) _then;
}

/// @nodoc
abstract class $MovieStateLoadingCopyWith<$Res> {
  factory $MovieStateLoadingCopyWith(
          MovieStateLoading value, $Res Function(MovieStateLoading) then) =
      _$MovieStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieStateLoadingCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res>
    implements $MovieStateLoadingCopyWith<$Res> {
  _$MovieStateLoadingCopyWithImpl(
      MovieStateLoading _value, $Res Function(MovieStateLoading) _then)
      : super(_value, (v) => _then(v as MovieStateLoading));

  @override
  MovieStateLoading get _value => super._value as MovieStateLoading;
}

/// @nodoc

class _$MovieStateLoading
    with DiagnosticableTreeMixin
    implements MovieStateLoading {
  const _$MovieStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MovieState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MovieState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Movie movieLoaded) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movieLoaded)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movieLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStateLoading value) loading,
    required TResult Function(MovieStateLoaded value) loaded,
    required TResult Function(MovieStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieStateLoading value)? loading,
    TResult Function(MovieStateLoaded value)? loaded,
    TResult Function(MovieStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStateLoading value)? loading,
    TResult Function(MovieStateLoaded value)? loaded,
    TResult Function(MovieStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MovieStateLoading implements MovieState {
  const factory MovieStateLoading() = _$MovieStateLoading;
}

/// @nodoc
abstract class $MovieStateLoadedCopyWith<$Res> {
  factory $MovieStateLoadedCopyWith(
          MovieStateLoaded value, $Res Function(MovieStateLoaded) then) =
      _$MovieStateLoadedCopyWithImpl<$Res>;
  $Res call({Movie movieLoaded});

  $MovieCopyWith<$Res> get movieLoaded;
}

/// @nodoc
class _$MovieStateLoadedCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res>
    implements $MovieStateLoadedCopyWith<$Res> {
  _$MovieStateLoadedCopyWithImpl(
      MovieStateLoaded _value, $Res Function(MovieStateLoaded) _then)
      : super(_value, (v) => _then(v as MovieStateLoaded));

  @override
  MovieStateLoaded get _value => super._value as MovieStateLoaded;

  @override
  $Res call({
    Object? movieLoaded = freezed,
  }) {
    return _then(MovieStateLoaded(
      movieLoaded: movieLoaded == freezed
          ? _value.movieLoaded
          : movieLoaded // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }

  @override
  $MovieCopyWith<$Res> get movieLoaded {
    return $MovieCopyWith<$Res>(_value.movieLoaded, (value) {
      return _then(_value.copyWith(movieLoaded: value));
    });
  }
}

/// @nodoc

class _$MovieStateLoaded
    with DiagnosticableTreeMixin
    implements MovieStateLoaded {
  const _$MovieStateLoaded({required this.movieLoaded});

  @override
  final Movie movieLoaded;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MovieState.loaded(movieLoaded: $movieLoaded)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MovieState.loaded'))
      ..add(DiagnosticsProperty('movieLoaded', movieLoaded));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.movieLoaded, movieLoaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(movieLoaded));

  @JsonKey(ignore: true)
  @override
  $MovieStateLoadedCopyWith<MovieStateLoaded> get copyWith =>
      _$MovieStateLoadedCopyWithImpl<MovieStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Movie movieLoaded) loaded,
    required TResult Function() error,
  }) {
    return loaded(movieLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movieLoaded)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(movieLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movieLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(movieLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStateLoading value) loading,
    required TResult Function(MovieStateLoaded value) loaded,
    required TResult Function(MovieStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieStateLoading value)? loading,
    TResult Function(MovieStateLoaded value)? loaded,
    TResult Function(MovieStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStateLoading value)? loading,
    TResult Function(MovieStateLoaded value)? loaded,
    TResult Function(MovieStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MovieStateLoaded implements MovieState {
  const factory MovieStateLoaded({required Movie movieLoaded}) =
      _$MovieStateLoaded;

  Movie get movieLoaded;
  @JsonKey(ignore: true)
  $MovieStateLoadedCopyWith<MovieStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateErrorCopyWith<$Res> {
  factory $MovieStateErrorCopyWith(
          MovieStateError value, $Res Function(MovieStateError) then) =
      _$MovieStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieStateErrorCopyWithImpl<$Res> extends _$MovieStateCopyWithImpl<$Res>
    implements $MovieStateErrorCopyWith<$Res> {
  _$MovieStateErrorCopyWithImpl(
      MovieStateError _value, $Res Function(MovieStateError) _then)
      : super(_value, (v) => _then(v as MovieStateError));

  @override
  MovieStateError get _value => super._value as MovieStateError;
}

/// @nodoc

class _$MovieStateError
    with DiagnosticableTreeMixin
    implements MovieStateError {
  const _$MovieStateError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MovieState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MovieState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Movie movieLoaded) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movieLoaded)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Movie movieLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieStateLoading value) loading,
    required TResult Function(MovieStateLoaded value) loaded,
    required TResult Function(MovieStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieStateLoading value)? loading,
    TResult Function(MovieStateLoaded value)? loaded,
    TResult Function(MovieStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieStateLoading value)? loading,
    TResult Function(MovieStateLoaded value)? loaded,
    TResult Function(MovieStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MovieStateError implements MovieState {
  const factory MovieStateError() = _$MovieStateError;
}
