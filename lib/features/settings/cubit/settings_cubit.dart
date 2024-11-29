import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_quotation_book/generated/l10n.dart';
import 'package:the_quotation_book/router/router.dart';
import 'package:the_quotation_book/store/repository/box_repository.dart';


part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(const SettingsState.initial());

  Future<void> clearCache(BuildContext context) async{
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(S.of(context).clearingTheCache),
          content: Text(S.of(context).deleteAllDataFromTheCache),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(S.of(context).cancel),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
                BoxRepository().removeAllBox();
              },
              child: Text(S.of(context).delete),
            ),
          ],
        );
      },
    );
    debugPrint('>>>> Cash Removed');
  }

  Future<void> selectLanguage(BuildContext context) async{
    // ignore: use_build_context_synchronously
    context.pushRoute(const LanguageRoute());
    debugPrint('>>>> languageSelecte');
  }

  Future<void> toggleNotifications(BuildContext context) async{
    context.pushRoute(const NotificationRoute());
    debugPrint('>>>> notification');


  }


}
