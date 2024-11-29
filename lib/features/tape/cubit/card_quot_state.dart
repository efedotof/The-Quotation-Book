part of 'card_quot_cubit.dart';

@freezed
class CardQuotState with _$CardQuotState {
  const factory CardQuotState({required bool isDoubleTapped}) = _CardQuotState;

  factory CardQuotState.initial() => const CardQuotState(isDoubleTapped: false);
}