
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:the_quotation_book/store/quote.dart';
import 'package:the_quotation_book/store/repository/box_interface.dart';

class BoxRepository implements BoxInterface {

  var boxInitName = 'quote_box';

  
  ValueListenable<Box<Quote>> listes(){
    return Hive.box<Quote>(boxInitName).listenable();
  }

  @override
  Future<void> addBox(String author, String text) async {
    var box = Hive.box<Quote>(boxInitName);
    box.add(Quote(author: author, text: text));
  }

  @override
  Future<void> initBox() async {
    if(!Hive.isBoxOpen(boxInitName)){
      await Hive.openBox<Quote>(boxInitName);
    }
  }

  @override
  Future<void> removeAllBox() async {
    var box = Hive.box<Quote>(boxInitName);
    box.clear();
  }

  @override
  Future<void> removeBox(int index) async {
    var box = Hive.box<Quote>(boxInitName);
    box.deleteAt(index);
  }
  
  @override
  Future<void> initHive() async {
    await Hive.initFlutter();
    log('>>>>> Hive initialized', name: 'Hive');
    if(!Hive.isAdapterRegistered(QuoteAdapter().typeId)){
      Hive.registerAdapter(QuoteAdapter());
      log('>>>>> Hive registrationAdapter', name: 'Hive');
    }
    await Hive.openBox<Quote>(boxInitName);
    log('>>>>> Hive opened', name: 'Hive');

  }

}