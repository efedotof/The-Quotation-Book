import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:the_quotation_book/theme/repository/theme_interface.dart';
import 'package:equatable/equatable.dart';
part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  
  ThemeCubit({required ThemeInterface interface, }) : _interface = interface, super( const ThemeState(Brightness.light)){
    _checkSelected();
  }

  final ThemeInterface _interface;


  Future<void>setThemeBright(Brightness bright) async{
    try {
      emit(ThemeState(bright));
      await _interface.setDarkThemeSelected(bright == Brightness.dark);
    } catch (e) {
      log(e.toString(), name: 'Theme');
    }
  }


  void _checkSelected(){
    try {
      final bright = _interface.isDarkTheme() ? Brightness.dark : Brightness.light;
      emit(ThemeState(bright));
    } catch (e) {
      log(e.toString(), name: 'Theme');
    }
  }

  
}
