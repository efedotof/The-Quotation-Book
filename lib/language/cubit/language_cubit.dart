import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:the_quotation_book/language/repository/language_interface.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit({required LanguageInterface interface}) : _interface = interface, super(const LanguageState('ru'));




  final LanguageInterface _interface;


  Future<void>setLocale(String locale) async{
    try {
      emit(LanguageState(locale));
      await _interface.setLocale(locale);
      
    } catch (e) {
      debugPrint(e.toString());
    }
  }


  String checkLocale(){
    final locale = _interface.isLocale();
    return locale;
  }
}
