// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_screen_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoritesScreenModelAdapter extends TypeAdapter<FavoritesScreenModel> {
  @override
  final int typeId = 1;

  @override
  FavoritesScreenModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoritesScreenModel(
      movieId: fields[0] as int,
      poster: fields[1] as String?,
      name: fields[2] as String?,
      year: fields[3] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, FavoritesScreenModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.movieId)
      ..writeByte(1)
      ..write(obj.poster)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.year);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoritesScreenModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
