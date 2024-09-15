


import 'package:hive_flutter/hive_flutter.dart';

part 'quote.g.dart';

@HiveType(typeId: 0)
class Quote extends HiveObject {

  @HiveField(0)
  String author;

  @HiveField(1)
  String text;


  Quote({required this.author, required this.text});


}