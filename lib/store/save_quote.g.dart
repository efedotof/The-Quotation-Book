// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_quote.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SaveQuoteAdapter extends TypeAdapter<SaveQuote> {
  @override
  final int typeId = 0;

  @override
  SaveQuote read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SaveQuote(
      author: fields[0] as String,
      text: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SaveQuote obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.author)
      ..writeByte(1)
      ..write(obj.text);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaveQuoteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
