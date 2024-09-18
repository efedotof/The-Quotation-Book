
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:the_quotation_book/store/repository/box_interface.dart';

import '../save_quote.dart';

class BoxRepository implements BoxInterface {

  var boxInitName = 'quote_box';

  ValueListenable<Box<SaveQuote>> listes(){
    return Hive.box<SaveQuote>(boxInitName).listenable();
  }

  @override
  Future<void> addBox(String author, String text) async {
    var box = Hive.box<SaveQuote>(boxInitName);
    box.add(SaveQuote(author: author, text: text));
  }

  @override
  Future<void> initBox() async {
    if(!Hive.isBoxOpen(boxInitName)){
      await Hive.openBox<SaveQuote>(boxInitName);
    }
  }

  @override
  Future<void> initHive() async {
    await Hive.initFlutter();
    log('>>>>> Hive initialized', name: 'Hive');
    if(!Hive.isAdapterRegistered(SaveQuoteAdapter().typeId)){
      Hive.registerAdapter(SaveQuoteAdapter());
      log('>>>>> Hive registrationAdapter', name: 'Hive');
    }
    await Hive.openBox<SaveQuote>(boxInitName);
    log('>>>>> Hive opened', name: 'Hive');
  }

  @override
  Future<void> removeAllBox() async {
    var box = Hive.box<SaveQuote>(boxInitName);
    box.clear();
  }

  @override
  Future<void> removeBox(int index) async {
    var box = Hive.box<SaveQuote>(boxInitName);
    box.deleteAt(index);
  }
}