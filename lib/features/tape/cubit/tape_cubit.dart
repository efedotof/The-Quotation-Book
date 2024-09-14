import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'tape_state.dart';

class TapeCubit extends Cubit<TapeState> {
  TapeCubit() : super(TapeInitial());

  Future<void> searcheQuot(String query) async {
    if (query.isEmpty) {
      emit(SearchInitial());
      return;
    }
    emit(SearchLoading());
    await Future.delayed(const Duration(seconds: 2));
    emit(SearchSuccess());
  }

  void clearSearche() {
    emit(SearchInitial());
  }
}

class Quot {
  final String author;
  final String text;
  final DateTime date;

  Quot({required this.author, required this.text, required this.date});
}
