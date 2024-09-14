part of 'tape_cubit.dart';

sealed class TapeState extends Equatable {
  const TapeState();

  @override
  List<Object> get props => [];
}

final class TapeInitial extends TapeState {}


class SearchInitial extends TapeState{}

class SearchLoading extends TapeState{}

class SearchSuccess extends TapeState{}

class SearcheError extends TapeState {}