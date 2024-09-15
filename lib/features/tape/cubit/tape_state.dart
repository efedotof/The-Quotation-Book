part of 'tape_cubit.dart';

sealed class TapeState extends Equatable {
  const TapeState();

  @override
  List<Object> get props => [];
}

class TapeInitial extends TapeState {}

class QuotationsLoading extends TapeState {}

class QuotationsLoaded extends TapeState {
  final List<Quot> results;

  const QuotationsLoaded({required this.results});

  @override
  List<Object> get props => [results];
}

class QuotationsError extends TapeState {
  final String message;

  const QuotationsError({required this.message});

  @override
  List<Object> get props => [message];
}

class SearchLoading extends TapeState {}

class SearchSuccess extends TapeState {
  final List<Quot> results;
  final String query; // Add this field

  const SearchSuccess({required this.results, required this.query}); // Update the constructor

  @override
  List<Object> get props => [results, query];
}

class SearchError extends TapeState {
  final String message;

  const SearchError({required this.message});

  @override
  List<Object> get props => [message];
}

