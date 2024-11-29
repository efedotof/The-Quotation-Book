

import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote.freezed.dart';

part 'quote.g.dart';


@freezed
class Quote with _$Quote{
  const factory Quote({
    required String author,
    required String text,
    required String category,
  }) = _Quote;

  factory Quote.fromJson(Map<String, dynamic> json ) => _$QuoteFromJson(json);

}