import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:the_quotation_book/features/tape/api/api_repository.dart';
import 'package:the_quotation_book/store/repository/box_interface.dart';

part 'tape_state.dart';

class TapeCubit extends Cubit<TapeState> {
  final BoxInterface _boxRep;
  final APIRepository _api;
  String _refreshType = 'random'; // Default refresh type

  TapeCubit({required BoxInterface boxRep})
      : _boxRep = boxRep,
        _api = APIRepository(),
        super(TapeInitial()) {
    loadRandomQuotations();
  }

  Future<void> loadRandomQuotations() async {
    emit(QuotationsLoading());
    try {
      final results = await _api.fetchRandomQuotations(50);
      emit(QuotationsLoaded(results: results));
      _refreshType = 'random';
    } catch (e) {
      emit(QuotationsError(message: e.toString()));
    }
  }

  Future<void> searchQuot(String query) async { // Ensure method name matches
    if (query.isEmpty) {
      return;
    }
    emit(SearchLoading());
    try {
      final results = await _api.searchQuotations(query);
      if (results.isEmpty) {
        emit(SearchError(message: 'No results found'));
      } else {
        emit(SearchSuccess(results: results, query: query)); // Pass the query
        _refreshType = 'search';
      }
    } catch (e) {
      emit(SearchError(message: e.toString()));
    }
  }

  void clearSearch() {
    loadRandomQuotations();
  }

  Future<void> quotSave(String author, String text) async {
    await _boxRep.addBox(author, text);
  }

  Future<void> refreshData() async {
    if (_refreshType == 'search') {
      // Refresh search results
      final currentState = state;
      if (currentState is SearchSuccess) {
        await searchQuot(currentState.query); // Use the query from SearchSuccess
      }
    } else {
      // Refresh random quotations
      loadRandomQuotations();
    }
  }
}




class Quot {
  final String author;
  final String text;

  Quot({required this.author, required this.text});

  factory Quot.fromJson(Map<String, dynamic> json) {
    return Quot(
      author: json['author'],
      text: json['text'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'author': author,
      'text': text,
    };
  }
}
