import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_quotation_book/generated/l10n.dart';

part 'favorit_state.dart';
part 'favorit_cubit.freezed.dart';

class FavoritCubit extends Cubit<FavoritState> {
  FavoritCubit() : super(const FavoritState.initial());


  void notificationAdd(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(S.of(context).theFunctionIsNotAvailableYet),
          content: Text(S.of(context).waitForTheNextUpdate),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(S.of(context).cancel),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(S.of(context).alright),
            ),
          ],
        );
      },
    );

    // _inApp.checkingTheAvailabilityOfWorkWithPayments();
    // _inApp.gettingAListOfProducts(['no_ads', 'daily_notifications']);
  }
}
