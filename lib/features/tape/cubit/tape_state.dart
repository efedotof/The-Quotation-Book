part of 'tape_cubit.dart';



@freezed 
class TapeState with _$TapeState{
  const factory TapeState.init() = _TapeInitial;
  const factory TapeState.quotationsLoading() = _QuotationsLoading;
  const factory TapeState.quotationsLoaded({required List<Quote> results})  = _QuotationsLoaded;
  const factory TapeState.quotationsError({required String message})  = _QuotationsError;
  const factory TapeState.searchLoading()  = _SearchLoading;
  const factory TapeState.searchSuccess({required List<Quote> results, required String query})  = _SearchSuccess;
  const factory TapeState.searchError({required String message})  = _SearchError;
}



// sealed class TapeState extends Equatable {
//   const TapeState();

//   @override
//   List<Object> get props => [];
// }

// final class TapeInitial extends TapeState {}
