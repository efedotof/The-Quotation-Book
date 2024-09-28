import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_quotation_book/features/tape/widget/model/quote.dart';
import 'package:the_quotation_book/features/tape/repository/api_repository.dart';
import 'package:the_quotation_book/store/repository/box_interface.dart';

part 'tape_state.dart';
part 'tape_cubit.freezed.dart';

class TapeCubit extends Cubit<TapeState> {
  TapeCubit({required BoxInterface interface})
      : _interface = interface,
        _api = ApiRepository(),
        super(const TapeState.init()) {
    loadRandomQuotations();
  }

  final BoxInterface _interface;
  final ApiRepository _api;
  List<String> selectedCategories = [];

  Future<void> quotSave(String author, String text) async {
    await _interface.addBox(author, text);
  }

  Future<void> loadRandomQuotations() async {
    emit(const TapeState.quotationsLoading());
    try {
      final results = await _api.fetchRandom(10);
      emit(TapeState.quotationsLoaded(results: results));
    } catch (e) {
      emit(TapeState.quotationsError(message: e.toString()));
    }
  }

  Future<void> searchQuote(
      {String query = '', List<String> categories = const []}) async {
    final searchCategories =
        categories.isEmpty ? selectedCategories : categories;

    if (query.isEmpty && searchCategories.isEmpty) {
      loadRandomQuotations();
      return;
    }

    emit(const TapeState.searchLoading());

    try {
      final results =
          await _api.fetchSearch(query: query, categories: searchCategories);
      if (results.isEmpty) {
        emit(const TapeState.searchError(message: 'No results found'));
      } else {
        emit(TapeState.searchSuccess(results: results, query: query));
      }
    } catch (e) {
      emit(TapeState.searchError(message: e.toString()));
    }
  }

  void toggleCategory(String category) {
    if (selectedCategories.contains(category)) {
      selectedCategories.remove(category);
    } else {
      selectedCategories.add(category);
    }
  }

  void clearSearch() {
    loadRandomQuotations();
  }

  Future<void> refreshData() async {
    final currentState = state;
    if (currentState is _SearchSuccess) {
      await searchQuote(query: currentState.query);
    } else if (currentState is _QuotationsLoaded) {
      await loadRandomQuotations();
    }
  }
}
