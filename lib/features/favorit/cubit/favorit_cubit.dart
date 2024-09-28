import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_quotation_book/untils/in_app/in_app_repository.dart';

part 'favorit_state.dart';
part 'favorit_cubit.freezed.dart';

class FavoritCubit extends Cubit<FavoritState> {
  FavoritCubit() : super(const FavoritState.initial());

  final _inApp = InAppRepository();

  void notificationAdd(){
    _inApp.checkingTheAvailabilityOfWorkWithPayments();
    _inApp.gettingAListOfProducts(['no_ads', 'daily_notifications']);
  }
}
