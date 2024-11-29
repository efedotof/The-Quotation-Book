import 'package:hive_flutter/hive_flutter.dart';

part 'save_quote.g.dart';

@HiveType(typeId: 0)
class SaveQuote extends HiveObject{

  @HiveField(0)
  String author;
  
  @HiveField(1)
  String text;

  SaveQuote({
    required this.author,
    required this.text
  });

}