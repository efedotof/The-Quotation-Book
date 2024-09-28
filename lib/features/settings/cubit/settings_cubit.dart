import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_quotation_book/router/router.dart';
import 'package:the_quotation_book/store/repository/box_repository.dart';


part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(const SettingsState.initial());

  Future<void> clearCache() async{
    await BoxRepository().removeAllBox();
    debugPrint('>>>> Cash Removed');
  }

  Future<void> selectLanguage(BuildContext context) async{
    // ignore: use_build_context_synchronously
    context.pushRoute(const LanguageRoute());
    debugPrint('>>>> languageSelecte');
  }

  Future<void> toggleNotifications() async{
    debugPrint('>>>> notification');


  }


}
