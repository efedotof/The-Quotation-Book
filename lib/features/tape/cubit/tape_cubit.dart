import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_quotation_book/features/tape/model/quote.dart';
import 'package:the_quotation_book/store/repository/box_interface.dart';

part 'tape_state.dart';
part 'tape_cubit.freezed.dart';

class TapeCubit extends Cubit<TapeState> {
  TapeCubit({required BoxInterface interface})
      : _interface = interface,
        super(const TapeState.init());

  final BoxInterface _interface;

  String _refreshType = 'random';




  Future<void> quotSave(String author, String text) async {
    await _interface.addBox(author, text);
  }

  Future<void> loadRandomQuotations() async {
    emit(const TapeState.quotationsLoading());
    try {
      //api result
      emit(TapeState.quotationsLoaded(results: results));
      _refreshType = 'random';
    } catch (e) {
      emit(TapeState.quotationsError(message: e.toString()));
    }
  }

  Future<void> searchQuote(String query) async {
    if(query.isEmpty){
      return;
    }
    emit(TapeState.searchLoading());
    try {
      //api searche
      if(results.isEmpty){
        emit(TapeState.searchError(message: 'No results found'));

      }else{  
        emit(TapeState.searchSuccess(results: results, query: query));
        _refreshType = 'search';
      }
    } catch (e) {
      emit(TapeState.searchError(message: e.toString()));
    }
  }

  void clearSearch(){
    loadRandomQuotations();
  }

  // Future<void> refreshData() async{
  //   if(_refreshType == 'search'){
  //     final currentState = state;
  //     if(currentState is TapeState.searchSuccess){
  //       await searchQuote(currentState.query);
  //     }
  //   }else{
  //     loadRandomQuotations();
  //   }
  // }


}
