// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
class _$MovieTearOff {
  const _$MovieTearOff();

  _Movie call({required List<Results> docs}) {
    return _Movie(
      docs: docs,
    );
  }

  Movie fromJson(Map<String, Object?> json) {
    return Movie.fromJson(json);
  }
}

/// @nodoc
const $Movie = _$MovieTearOff();

/// @nodoc
mixin _$Movie {
  List<Results> get docs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call({List<Results> docs});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  final Movie _value;
  // ignore: unused_field
  final $Res Function(Movie) _then;

  @override
  $Res call({
    Object? docs = freezed,
  }) {
    return _then(_value.copyWith(
      docs: docs == freezed
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ));
  }
}

/// @nodoc
abstract class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) then) =
      __$MovieCopyWithImpl<$Res>;
  @override
  $Res call({List<Results> docs});
}

/// @nodoc
class __$MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(_Movie _value, $Res Function(_Movie) _then)
      : super(_value, (v) => _then(v as _Movie));

  @override
  _Movie get _value => super._value as _Movie;

  @override
  $Res call({
    Object? docs = freezed,
  }) {
    return _then(_Movie(
      docs: docs == freezed
          ? _value.docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Movie with DiagnosticableTreeMixin implements _Movie {
  const _$_Movie({required this.docs});

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$$_MovieFromJson(json);

  @override
  final List<Results> docs;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Movie(docs: $docs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Movie'))
      ..add(DiagnosticsProperty('docs', docs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Movie &&
            const DeepCollectionEquality().equals(other.docs, docs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(docs));

  @JsonKey(ignore: true)
  @override
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieToJson(this);
  }
}

abstract class _Movie implements Movie {
  const factory _Movie({required List<Results> docs}) = _$_Movie;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  List<Results> get docs;
  @override
  @JsonKey(ignore: true)
  _$MovieCopyWith<_Movie> get copyWith => throw _privateConstructorUsedError;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return _Results.fromJson(json);
}

/// @nodoc
class _$ResultsTearOff {
  const _$ResultsTearOff();

  _Results call(
      {required double id,
      required String name,
      required String description,
      required double year,
      required List<Poster> poster}) {
    return _Results(
      id: id,
      name: name,
      description: description,
      year: year,
      poster: poster,
    );
  }

  Results fromJson(Map<String, Object?> json) {
    return Results.fromJson(json);
  }
}

/// @nodoc
const $Results = _$ResultsTearOff();

/// @nodoc
mixin _$Results {
  double get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get year => throw _privateConstructorUsedError;
  List<Poster> get poster => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res>;
  $Res call(
      {double id,
      String name,
      String description,
      double year,
      List<Poster> poster});
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res> implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._value, this._then);

  final Results _value;
  // ignore: unused_field
  final $Res Function(Results) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? year = freezed,
    Object? poster = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as double,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as double,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as List<Poster>,
    ));
  }
}

/// @nodoc
abstract class _$ResultsCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$ResultsCopyWith(_Results value, $Res Function(_Results) then) =
      __$ResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {double id,
      String name,
      String description,
      double year,
      List<Poster> poster});
}

/// @nodoc
class __$ResultsCopyWithImpl<$Res> extends _$ResultsCopyWithImpl<$Res>
    implements _$ResultsCopyWith<$Res> {
  __$ResultsCopyWithImpl(_Results _value, $Res Function(_Results) _then)
      : super(_value, (v) => _then(v as _Results));

  @override
  _Results get _value => super._value as _Results;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? year = freezed,
    Object? poster = freezed,
  }) {
    return _then(_Results(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as double,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as double,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as List<Poster>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Results with DiagnosticableTreeMixin implements _Results {
  const _$_Results(
      {required this.id,
      required this.name,
      required this.description,
      required this.year,
      required this.poster});

  factory _$_Results.fromJson(Map<String, dynamic> json) =>
      _$$_ResultsFromJson(json);

  @override
  final double id;
  @override
  final String name;
  @override
  final String description;
  @override
  final double year;
  @override
  final List<Poster> poster;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Results(id: $id, name: $name, description: $description, year: $year, poster: $poster)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Results'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('year', year))
      ..add(DiagnosticsProperty('poster', poster));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Results &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.poster, poster));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(poster));

  @JsonKey(ignore: true)
  @override
  _$ResultsCopyWith<_Results> get copyWith =>
      __$ResultsCopyWithImpl<_Results>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultsToJson(this);
  }
}

abstract class _Results implements Results {
  const factory _Results(
      {required double id,
      required String name,
      required String description,
      required double year,
      required List<Poster> poster}) = _$_Results;

  factory _Results.fromJson(Map<String, dynamic> json) = _$_Results.fromJson;

  @override
  double get id;
  @override
  String get name;
  @override
  String get description;
  @override
  double get year;
  @override
  List<Poster> get poster;
  @override
  @JsonKey(ignore: true)
  _$ResultsCopyWith<_Results> get copyWith =>
      throw _privateConstructorUsedError;
}

Poster _$PosterFromJson(Map<String, dynamic> json) {
  return _Poster.fromJson(json);
}

/// @nodoc
class _$PosterTearOff {
  const _$PosterTearOff();

  _Poster call({required String previewUrl, required String url}) {
    return _Poster(
      previewUrl: previewUrl,
      url: url,
    );
  }

  Poster fromJson(Map<String, Object?> json) {
    return Poster.fromJson(json);
  }
}

/// @nodoc
const $Poster = _$PosterTearOff();

/// @nodoc
mixin _$Poster {
  String get previewUrl => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PosterCopyWith<Poster> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosterCopyWith<$Res> {
  factory $PosterCopyWith(Poster value, $Res Function(Poster) then) =
      _$PosterCopyWithImpl<$Res>;
  $Res call({String previewUrl, String url});
}

/// @nodoc
class _$PosterCopyWithImpl<$Res> implements $PosterCopyWith<$Res> {
  _$PosterCopyWithImpl(this._value, this._then);

  final Poster _value;
  // ignore: unused_field
  final $Res Function(Poster) _then;

  @override
  $Res call({
    Object? previewUrl = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      previewUrl: previewUrl == freezed
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PosterCopyWith<$Res> implements $PosterCopyWith<$Res> {
  factory _$PosterCopyWith(_Poster value, $Res Function(_Poster) then) =
      __$PosterCopyWithImpl<$Res>;
  @override
  $Res call({String previewUrl, String url});
}

/// @nodoc
class __$PosterCopyWithImpl<$Res> extends _$PosterCopyWithImpl<$Res>
    implements _$PosterCopyWith<$Res> {
  __$PosterCopyWithImpl(_Poster _value, $Res Function(_Poster) _then)
      : super(_value, (v) => _then(v as _Poster));

  @override
  _Poster get _value => super._value as _Poster;

  @override
  $Res call({
    Object? previewUrl = freezed,
    Object? url = freezed,
  }) {
    return _then(_Poster(
      previewUrl: previewUrl == freezed
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Poster with DiagnosticableTreeMixin implements _Poster {
  const _$_Poster({required this.previewUrl, required this.url});

  factory _$_Poster.fromJson(Map<String, dynamic> json) =>
      _$$_PosterFromJson(json);

  @override
  final String previewUrl;
  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Poster(previewUrl: $previewUrl, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Poster'))
      ..add(DiagnosticsProperty('previewUrl', previewUrl))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Poster &&
            const DeepCollectionEquality()
                .equals(other.previewUrl, previewUrl) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(previewUrl),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$PosterCopyWith<_Poster> get copyWith =>
      __$PosterCopyWithImpl<_Poster>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PosterToJson(this);
  }
}

abstract class _Poster implements Poster {
  const factory _Poster({required String previewUrl, required String url}) =
      _$_Poster;

  factory _Poster.fromJson(Map<String, dynamic> json) = _$_Poster.fromJson;

  @override
  String get previewUrl;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$PosterCopyWith<_Poster> get copyWith => throw _privateConstructorUsedError;
}
